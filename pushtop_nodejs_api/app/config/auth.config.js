require('dotenv').config();
module.exports = {
  secret: process.env.APP_SECRET,
  refreshTokenSecret: process.env.APP_REFRESH_TOKEN_SECRET,
  expireTime: process.env.LOGIN_EXPIRE_TIME,
  refreshTokenExpireTime: process.env.LOGIN_REFRESH_TOKEN_EXPIRE_TIME,
};
