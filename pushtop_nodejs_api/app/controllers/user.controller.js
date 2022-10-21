const db = require("../models");
const User = db.user;
const Role = db.role;
const Feature = db.Feature;
const Permission = db.Permission;

const sequelize = db.sequelize;

const Op = db.Sequelize.Op;

const getPagination = (page, size) => {
const limit = size ? +size : 10;
const offset = page ? (page-1) * limit : 0;

  return { limit, offset };
};

  const getPagingData = (data, activeUser, pendingUser, page, limit) => {
    const { count: totalUsers, rows: userInfo  } = data;
    const countActiveUser  = activeUser;
    const countPendingUser  = pendingUser;
    const currentPage = page ? +page : 0;
    const totalPages = Math.ceil(totalUsers / limit);

    return { totalUsers, userInfo, countActiveUser, countPendingUser, totalPages, currentPage };
  };

exports.findAll = (req, res) => {
  const { page, perPage, q, role, status, sortColumn, sort } = req.query;
  const { limit, offset } = getPagination(page, perPage);

  var condition = q && role && status ? { [Op.and]: [{ username:{ [Op.like]: `%${q}%` } }, { roleId: { [Op.eq]: role } },{ active: { [Op.eq]: status } }] } : 
                  q && role ? { [Op.and]: [{ username:{ [Op.like]: `%${q}%` } }, { roleId: { [Op.eq]: role } }] } : 
                  q && status ? { [Op.and]: [{ username:{ [Op.like]: `%${q}%` } }, { active: { [Op.eq]: status } }] } : 
                  role && status ? { [Op.and]: [{ roleId:{ [Op.eq]: role } }, { active: { [Op.eq]: status } }] } : 
                  q ? { username: { [Op.like]: `%${q}%` } } : 
                  role ? { roleId: { [Op.eq]: role } } : 
                  status ? { active: { [Op.eq]: status } } : null; 

  User.findAndCountAll({ 
    include: {
      model: Role,
      required: true
    }, 
    where: condition, 
    offset, 
    limit, 
    order:[[sortColumn ? sortColumn : 'id', sort ? sort : 'ASC']], 
    attributes: {
      exclude: ['password']
    }
  })
    .then(async data => {
      if (!data) {
        return res.status(404).send({ message: "User Not found." });
      }

      var activeUser;
      var pendingUser;

      await User.count({where: {active: 'active'} }).then( a => {activeUser = a});
      await User.count({where: {active: 'pending'} }).then( p => {pendingUser = p});

      const response = getPagingData(data, activeUser, pendingUser, page, limit);

      res.status(200).send(response);
    })
    .catch(err => {
      res.status(500).send({ message: err.message });
    });

};

exports.findAllActive = (req, res) => {
  const { page, size, title } = req.query;
  const { limit, offset } = getPagination(page, size);
  var condition = title ? { username: { [Op.like]: `%${title}%` }, active: true } : { active: true };

  User.findAndCountAll({ where: condition, offset, limit, order:[['id', 'DESC']] })
    .then(data => {
      if (!data) {
        return res.status(404).send({ message: "User Not found." });
      }
      const response = getPagingData(data, page, limit);
      res.status(200).send(response);
    })
    .catch(err => {
      res.status(500).send({ message: err.message });
    });
};

exports.findOne = (req, res) => {
  const id = req.params.id;

  User.findByPk(id, {
    include: {
      model: Role,
      required: true
    },
    attributes: {
      exclude: ['password']
    }
  })
    .then(user => {
      if (!user) {
        return res.status(404).send({ message: "User Not found." });
      }

      var ability = [];

      var rolePermissions = [];
      var userPermissions = [];
      var tempPermissions = [];

      user.getPermissions()
      .then(async permissions => {
        permissions.forEach(e => {
          userPermissions.push({action: e.action,subject: e.subject, featureId: e.featureId});
        });

        await getRolePermission(user.role.id).then(rolePermission => {
          rolePermission.forEach(e => {
            rolePermissions.push({action: e.action,subject: e.subject, featureId: e.featureId});
          });
        });

        userPermissions.forEach(e => {
          var removeIndex = rolePermissions.map(function(item) { return item.subject; }).indexOf(e.subject);
          removeIndex != -1 ? rolePermissions.splice(removeIndex, 1) : tempPermissions.push(e);
        });
        
        ability = [...rolePermissions, ...tempPermissions];

        const groupByKey = (list, key, {omitKey=false}) => list.reduce((hash, {[key]:value, ...rest}) => ({...hash, [value]:( hash[value] || [] ).concat(omitKey ? {...rest} : {[key]:value, ...rest})} ), {});
        
        // console.log(ability);
        // console.log(groupByKey(ability, 'featureId', {omitKey:false}));

        res.status(200).send({
          userData: {
            id: user.id,
            fullName: user.fullname,
            username: user.username,
            avatar: user.avatar,
            email: user.email,
            role: user.role.name,
            roleId: user.roleId,
            phone: user.phone,
            telegramId: user.telegramId,
            last_login: user.last_login,
            created_at: user.createdAt,
            updated_at: user.updatedAt,
            status:user.active,
            ability: groupByKey(ability, 'featureId', {omitKey:false}),
          }
        });
      });

      // res.status(200).send(data);
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving User with id=" + id
      });
    });
};

exports.create = (req, res) => {
  // Validate request
  if (!req.body.title) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
    return;
  }

  User.create({
    username: req.body.username,
    email: req.body.email,
    password: bcrypt.hashSync(req.body.password, 8),
    active: req.body.active ? req.body.active : false,
  })
    .then(user => {
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

exports.update = (req, res) => {
  const id = req.body.params.id;
  console.log(req.body.params);
  User.update(req.body.params, {
    where: { id: id },
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "User was updated successfully."
        });
      } else {
        res.send({
          message: `Cannot update User with id=${id}. Maybe User was not found or req.body is empty!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error updating User with id=" + id
      });
    });
};

exports.delete = (req, res) => {
  const id = req.params.id;

  User.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "User was deleted successfully!"
        });
      } else {
        res.send({
          message: `Cannot delete User with id=${id}. Maybe User was not found!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Could not delete User with id=" + id
      });
    });
};

exports.deleteAll = (req, res) => {
  User.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.send({ message: `${nums} User were deleted successfully!` });
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while removing all User."
      });
    });
};

exports.allAccess = (req, res) => {
  res.status(200).send("Public Content.");
};

exports.userBoard = (req, res) => {
  res.status(200).send("User Content.");
};

exports.adminBoard = (req, res) => {
  res.status(200).send("Admin Content.");
};

exports.moderatorBoard = (req, res) => {
  res.status(200).send("Moderator Content.");
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