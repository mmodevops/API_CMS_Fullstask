const { authJwt } = require("../middleware");
const controller = require("../controllers/ads.controller");

module.exports = function(app) {
  app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });

  app.get("/api/ads/", controller.findAll);
  app.get("/api/ads/published", controller.findAllPublished);
  app.get("/api/ads/:id", controller.findOne);
  app.post("/api/ads/", controller.create);
  app.put("/api/ads/:id", controller.update);
  app.delete("/api/ads/:id", controller.delete);
  app.delete("/api/ads/", controller.deleteAll);

};
