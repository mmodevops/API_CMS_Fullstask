module.exports = (sequelize, Sequelize) => {
  const Gift = sequelize.define("app_giftcode_event", {
    giftcode_event_id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    giftcode_event_name: {
      type: Sequelize.STRING
    },
    giftcode_des: {
      type: Sequelize.STRING
    },
    event_type_id: {
      type: Sequelize.INTEGER
    },
    game_id: {
      type: Sequelize.INTEGER
    },
    giftcode_event_start_date	: {
      type: Sequelize.DATE
    },
    game_link_share: {
      type: Sequelize.STRING
    },
    giftcode_event_end_date: {
      type: Sequelize.DATE
    },
    giftcode_event_status: {
      type: Sequelize.BOOLEAN
    },
    giftcode_event_teaser: {
      type: Sequelize.BOOLEAN
    },
    giftcode_event_cont: {
      type: Sequelize.BOOLEAN
    },
    giftcode_event_point: {
      type: Sequelize.STRING
    },
    giftcode_event_value: {
      type: Sequelize.INTEGER
    }
  },{
      freezeTableName: true,
      // timestamps: false
  });

  return Gift;
};
