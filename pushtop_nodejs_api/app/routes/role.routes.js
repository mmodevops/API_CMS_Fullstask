const { authJwt } = require("../middleware");
const controller = require("../controllers/role.controller");

module.exports = function(app) {
  app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });
//, [authJwt.verifyToken, authJwt.isAdmin]
  app.get("/api/role", [authJwt.verifyToken], controller.findAll);
  app.get("/api/role/:id",controller.findOne);
  app.post("/api/role/", controller.create);
  app.put("/api/role/:id", controller.update);
  app.delete("/api/role/:id", controller.delete);
  app.delete("/api/role/", controller.deleteAll);
};
