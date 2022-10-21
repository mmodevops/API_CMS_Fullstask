const { authJwt } = require("../middleware");
const controller = require("../controllers/permission.controller");

module.exports = function(app) {
  app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });
//, [authJwt.verifyToken, authJwt.isAdmin]
  app.get("/api/permission", controller.findAll);
  app.get("/api/permission/:id",controller.findOne);
  app.post("/api/permission/", controller.create);
  app.put("/api/permission/:id", controller.update);
  app.delete("/api/permission/:id", controller.delete);
  app.delete("/api/permission/", controller.deleteAll);
};
