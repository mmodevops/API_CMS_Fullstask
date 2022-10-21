const { authJwt } = require("../middleware");
const controller = require("../controllers/giftcode.controller");

module.exports = function(app) {
  app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });

  app.get("/api/giftcode/", controller.findAll);
  app.get("/api/giftcode/published", controller.findAllPublished);
  app.get("/api/giftcode/:id", controller.findOne);
  app.post("/api/giftcode/", controller.create);
  app.put("/api/giftcode/:id", controller.update);
  app.delete("/api/giftcode/:id", controller.delete);
  app.delete("/api/giftcode/", controller.deleteAll);

};
