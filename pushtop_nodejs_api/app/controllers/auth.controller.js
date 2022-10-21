const db = require("../models");
const config = require("../config/auth.config");
const User = db.user;
const Role = db.role;
const Permission = db.permission;
const sequelize = db.sequelize;

const Op = db.Sequelize.Op;

var jwt = require("jsonwebtoken");
var bcrypt = require("bcryptjs");

exports.signup = (req, res) => {
  // Save User to Database
  User.create({
    username: req.body.username,
    email: req.body.email,
    password: bcrypt.hashSync(req.body.password, 8),
    fullname: req.body.username,
    active: 'pending',
  })
    .then(user => {
      console.log(user);
      if (req.body.roles) {
        Role.findAll({
          where: {
            name: {
              [Op.or]: req.body.roles
            }
          }
        }).then(roles => {
          user.setRoles(roles).then(() => {
            res.send({ message: "User registered successfully!" });
          });
        });
      } else {
        // user role = 1
        user.setRoles([1]).then(() => {
          res.send({ message: "User registered successfully!" });
        });
      }
    })
    .catch(err => {
      res.status(500).send({ message: err.message });
    });
};

exports.signin = (req, res) => {
  User.findOne({
    include: {
      model: Role,
      required: true
    },
    where: {
      // username: req.body.username
      email: req.body.email,
      active: 'active'
    }
  })
    .then(user => {
      if (!user) {
        return res.status(404).send({ message: "User Not found." });
      }

      var passwordIsValid = bcrypt.compareSync(
        req.body.password,
        // req.query.password,
        user.password
      );

      if (!passwordIsValid) {
        return res.status(401).send({
          accessToken: null,
          message: "Invalid Password!"
        });
      }

      if (!user.active) {
        return res.status(401).send({
          accessToken: null,
          message: "User not Active!"
        });
      }

      var authorities = [];
      var ability = [];
          //   [{
          //     action: 'manage',
          //     subject: 'all'
          //   }
          // ];
      var rolePermissions = [];
      var userPermissions = [];
      var tempPermissions = [];

      user.getPermissions().then(async permissions => {
        permissions.forEach(e => {
          userPermissions.push({action: e.action,subject: e.subject});
        });

        await getRolePermission(user.role.id).then(rolePermission => {
          rolePermission.forEach(e => {
            rolePermissions.push({action: e.action,subject: e.subject});
          });
        });

        userPermissions.forEach(e => {
          var removeIndex = rolePermissions.map(function(item) { return item.subject; }).indexOf(e.subject);
          removeIndex != -1 ? rolePermissions.splice(removeIndex, 1) : tempPermissions.push(e);
        });        

        if(user.role.name == 'admin') {
          ability = [{action: 'manage',subject: 'all'}];
        } else {
          ability = [...rolePermissions, ...tempPermissions];
        }

        var token = jwt.sign({ id: user.id, }, config.secret, {
          expiresIn: config.expireTime // 24 hours
        });

        var refreshToken = jwt.sign({ id: user.id }, config.refreshTokenSecret, {
          expiresIn: config.refreshTokenExpireTime // 24 hours
        });

        await User.update({ last_login: sequelize.fn('NOW') }, {
          where: {
            id: user.id
          }
        });
        
        res.status(200).send({
          userData: {
            id: user.id,
            fullName: user.fullname,
            username: user.username,
            avatar: user.avatar,
            email: user.email,
            role: user.role.name,
            ability: ability,
            extras: {
              eCommerceCartItemsCount: 5
            }
          },
          accessToken: token,
          refreshToken: refreshToken
        });
      });

      // user.getRoles().then(async roles => {
      //   for (let i = 0; i < roles.length; i++) {
      //     await getRolePermission(roles[i].name).then(rolePermission => {
      //       rolePermission.forEach(e => {
      //         rolePermissions.push({action: e.action,subject: e.subject});
      //       });
      //     });
      //     authorities.push(roles[i].name);
      //   }

      //   await getUserPermission(user).then(userPermission => {
      //     userPermission.forEach(e => {
      //       userPermissions.push({action: e.action,subject: e.subject});
      //     });
      //   });

      //   userPermissions.forEach(e => {
      //     var removeIndex = rolePermissions.map(function(item) { return item.subject; }).indexOf(e.subject);
      //     removeIndex != -1 ? rolePermissions.splice(removeIndex, 1) : tempPermissions.push(e);
      //   });
        
      //   ability = [...rolePermissions, ...tempPermissions];

      //   var service = "pushtop";

      //   var token = jwt.sign({ id: user.id, service:service }, config.secret, {
      //     expiresIn: config.expireTime // 24 hours
      //   });

      //   var refreshToken = jwt.sign({ id: user.id, service:service }, config.refreshTokenSecret, {
      //     expiresIn: config.refreshTokenExpireTime // 24 hours
      //   });

      //   res.status(200).send({
      //     userData: {
      //       id: user.id,
      //       fullName: user.fullname,
      //       username: user.username,
      //       avatar: user.avatar,
      //       email: user.email,
      //       service: service,
      //       role: authorities,
      //       ability: ability,
      //       extras: {
      //         eCommerceCartItemsCount: 5
      //       }
      //     },
      //     accessToken: token,
      //     refreshToken: refreshToken
      //   });
      // });
    })
    .catch(err => {
      res.status(200).send({ message: err.message });
    });
};

const getRolePermission = (roleId) => {  
  return new Promise((resolve, reject) => {
    Role.findOne({
      where: {
        id: roleId
      }
    }).then(role => {
      role.getPermissions().then(permissions => {
        resolve(permissions);
      });
    });
  });
};

const getUserPermission = (user) => {  
  return new Promise((resolve, reject) => {
    user.getPermissions().then(permissions => {
      resolve(permissions);
    });
  });
};
