const db = require("../models");
const ROLES = db.ROLES;
const User = db.user;

checkDuplicateUsernameOrEmail = (req, res, next) => {
  var isEmailAlreadyInUse = null;
  var isUsernameAlreadyInUse = null;

  // Username
  User.findOne({
    where: {
      username: req.body.username
    }
  }).then(user => {
    if (user) {
      isUsernameAlreadyInUse = "Failed! Username is already in use!";
      // res.status(400).send({
      //   message: "Failed! Username is already in use!"
      // });
      // return;
    }

    // Email
    User.findOne({
      where: {
        email: req.body.email
      }
    }).then(user => {
      if (user) {
        isEmailAlreadyInUse = "Failed! Email is already in use!";
        // res.status(400).send({
        //   message: "Failed! Email is already in use!"
        // });
        // return;
      }

      var error = {
        email: isEmailAlreadyInUse ? 'This email is already in use.' : null,
        username: isUsernameAlreadyInUse ? 'This username is already in use.' : null
      };

      if (error.username || error.email) {
        res.send({error});
        return;
      }
      next();
    });
  });
};

checkRolesExisted = (req, res, next) => {
  if (req.body.roles) {
    for (let i = 0; i < req.body.roles.length; i++) {
      if (!ROLES.includes(req.body.roles[i])) {
        res.status(400).send({
          message: "Failed! Role does not exist = " + req.body.roles[i]
        });
        return;
      }
    }
  }
  
  next();
};

const verifySignUp = {
  checkDuplicateUsernameOrEmail: checkDuplicateUsernameOrEmail,
  checkRolesExisted: checkRolesExisted
};

module.exports = verifySignUp;
