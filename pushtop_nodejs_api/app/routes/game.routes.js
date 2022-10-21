const { authJwt } = require("../middleware");
const controller = require("../controllers/game.controller");

module.exports = function(app) {
  app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });

  app.get("/api/game/", controller.findAll); //[authJwt.verifyToken], 
  app.get("/api/game/published", controller.findAllPublished);
  app.get("/api/game/:id", controller.findOne);
  app.post("/api/game/", controller.create);
  app.put("/api/game/:id", controller.update);
  app.delete("/api/game/:id", controller.delete);
  app.delete("/api/game/", controller.deleteAll);

};
