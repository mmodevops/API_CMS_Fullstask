module.exports = (sequelize, Sequelize) => {
  const Giftcode = sequelize.define("app_giftcode_detail", {
    giftcode_detail_id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    giftcode_event_id: {
      type: Sequelize.INTEGER
    },
    giftcode_code: {
      type: Sequelize.STRING
    },
    giftcode_detail_time: {
      type: Sequelize.DATE
    },
    giftcode_detail_status: {
      type: Sequelize.BOOLEAN
    }
  },{
      freezeTableName: true,
    //   timestamps: false
  });

  return Giftcode;
};
