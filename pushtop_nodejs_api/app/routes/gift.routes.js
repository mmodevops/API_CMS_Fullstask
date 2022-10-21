const { authJwt } = require("../middleware");
const controller = require("../controllers/gift.controller");

module.exports = function(app) {
  app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });

  app.get("/api/gift/", controller.findAll);
  app.get("/api/gift/published", controller.findAllPublished);
  app.get("/api/gift/:id", controller.findOne);
  app.get("/api/gift/giftcode/:id", controller.countAllGift);
  app.get("/api/gift/giftcode/remain/:id", controller.countAllRemainGift);
  app.post("/api/gift/", controller.create);
  app.put("/api/gift/:id", controller.update);
  app.delete("/api/gift/:id", controller.delete);
  app.delete("/api/gift/", controller.deleteAll);

};
