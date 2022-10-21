const db = require("../models");
const User = db.user;
const Role = db.role;
const Permission = db.permission;
const Feature = db.feature;
const sequelize = db.sequelize;

const Op = db.Sequelize.Op;

const getPagination = (page, size) => {
  const limit = size ? +size : 10;
  const offset = page ? (page-1) * limit : 0;

  return { limit, offset };
};

  const getPagingData = (data, page, limit) => {
    const { count: totalPermissions, rows: permissionInfo } = data;
    const currentPage = page ? +page : 0;
    const totalPages = Math.ceil(totalPermissions / limit);

    return { totalPermissions, permissionInfo, totalPages, currentPage };
  };

exports.findAll = (req, res) => {
  const { page, perPage, q, sortColumn, sort } = req.query;
  const { limit, offset } = getPagination(page, perPage);
  var condition = q ? { name: { [Op.like]: `%${q}%` } } : null;

  Feature.findAndCountAll({ 
    include: {
      model: Permission,
      required: true
    }, 
    where: condition, offset, limit, order:[[sortColumn ? sortColumn : 'id', sort ? sort : 'ASC']]
  })
    .then(data => {
      if (!data) {
        return res.status(404).send({ message: "Permission Not found." });
      }
      const response = getPagingData(data, page, limit);
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

  User.findByPk(id)
    .then(data => {
      if (!data) {
        return res.status(404).send({ message: "User Not found." });
      }
      res.status(200).send(data);
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
  const id = req.params.id;

  User.update(req.body, {
    where: { id: id }
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
