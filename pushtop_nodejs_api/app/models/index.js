const config = require("../config/db.config.js");

const Sequelize = require("sequelize");
const sequelize = new Sequelize(
  config.DB,
  config.USER,
  config.PASSWORD,
  {
    // host: config.HOST,
    dialect: config.dialect,
    port: config.port,
    operatorsAliases: 0,
    replication: config.replication,
    pool: config.pool
  }
);

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.user = require("../models/user.model.js")(sequelize, Sequelize);
db.role = require("../models/role.model.js")(sequelize, Sequelize);
db.permission = require("./permission.model.js")(sequelize, Sequelize);
db.feature = require("./feature.model.js")(sequelize, Sequelize);

db.game = require("../models/game.model.js")(sequelize, Sequelize);
db.gift = require("../models/gift.model.js")(sequelize, Sequelize);
db.giftcode = require("../models/giftcode.model.js")(sequelize, Sequelize);
db.ads = require("../models/ads.model.js")(sequelize, Sequelize);

// db.role.belongsTo(db.user, {foreignKey: {name: 'roleId'}});

// db.role.belongsToMany(db.user, {
//   through: "user_roles",
//   foreignKey: "roleId",
//   otherKey: "userId"
// });

// db.user.belongsToMany(db.role, {
//   through: "user_roles",
//   foreignKey: "userId",
//   otherKey: "roleId"
// });

db.user.belongsTo(db.role, {foreignKey: "roleId"});
// db.role.belongsTo(db.user, {foreignKey: "id"});

db.role.belongsToMany(db.permission, {
  through: "role_permissions",
  foreignKey: "roleId",
  otherKey: "permissionId"
});

db.user.belongsToMany(db.permission, {
  through: "user_permissions",
  foreignKey: "userId",
  otherKey: "permissionId"
});

db.permission.belongsTo(db.feature, {foreignKey: "featureId"});
db.feature.hasMany(db.permission, { otherKey: "featureId"});

db.gift.hasMany(db.giftcode, {foreignKey: 'giftcode_event_id'});
db.giftcode.belongsTo(db.gift, {foreignKey: 'giftcode_event_id'});
db.game.hasMany(db.gift, {foreignKey: 'id'});
db.gift.belongsTo(db.game, {foreignKey: 'id'});

db.ROLES = ["user", "admin", "moderator"];

module.exports = db;
