const { authJwt } = require("../middleware");
const controller = require("../controllers/user.controller");

module.exports = function(app) {
  app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });
//, [authJwt.verifyToken, authJwt.isAdmin]
  app.get("/api/user", [authJwt.verifyToken], controller.findAll);
  app.get("/api/user/active", controller.findAllActive);
  app.get("/api/user/:id",controller.findOne);
  app.post("/api/user/", controller.create);
  app.put("/api/user", controller.update);
  app.delete("/api/user/:id", controller.delete);
  app.delete("/api/user/", controller.deleteAll);

  app.get("/api/test/all", controller.allAccess);

  app.get(
    "/api/test/user",
    [authJwt.verifyToken],
    controller.userBoard
  );

  app.get(
    "/api/test/mod",
    [authJwt.verifyToken, authJwt.isModerator],
    controller.moderatorBoard
  );

  app.get(
    "/api/test/admin",
    [authJwt.verifyToken, authJwt.isAdmin],
    controller.adminBoard
  );
};
