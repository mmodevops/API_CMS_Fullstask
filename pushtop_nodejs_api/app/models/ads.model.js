module.exports = (sequelize, Sequelize) => {
  const Ads = sequelize.define("app_ads", {
    app_ads_id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    app_ads_title: {
      type: Sequelize.STRING
    },
    app_ads_content: {
      type: Sequelize.INTEGER
    },
    app_ads_image_link: {
      type: Sequelize.STRING
    },
    app_ads_link: {
      type: Sequelize.STRING
    },
    app_ads_display: {
      type: Sequelize.BOOLEAN
    },
    app_ads_status: {
      type: Sequelize.BOOLEAN
    }
  },{
      freezeTableName: true,
      // timestamps: false
  });

  return Ads;
};
