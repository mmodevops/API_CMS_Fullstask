const db = require("../models");
const Game = db.game;
const sequelize = db.sequelize;

const Op = db.Sequelize.Op;

const getPagination = (page, size) => {
  const limit = size ? +size : 10;
  const offset = page ? page * limit : 0;

  return { limit, offset };
};

  const getPagingData = (data, page, limit) => {
    const { count: totalGames, rows: gameInfo } = data;
    const currentPage = page ? +page : 0;
    const totalPages = Math.ceil(totalGames / limit);

    return { totalGames, gameInfo, totalPages, currentPage };
  };

exports.findAll = (req, res) => {
  const { page, size, title } = req.query;
  const { limit, offset } = getPagination(page, size);
  var condition = title ? { game_name: { [Op.like]: `%${title}%` } } : null;

  
  Game.findAndCountAll({ where: condition, offset, limit, order:[['id', 'DESC']] })
    .then(data => {
      if (!data) {
        return res.status(404).send({ message: "Game Not found." });
      }
      const response = getPagingData(data, page, limit);
      res.status(200).send(response);
      // console.log(response);
    })
    .catch(err => {
      res.status(500).send({ message: err.message });
    });

};

exports.findAllPublished = (req, res) => {
  const { page, size, title } = req.query;
  const { limit, offset } = getPagination(page, size);
  var condition = title ? { game_name: { [Op.like]: `%${title}%` }, game_status: true } : { game_status: true };

  Game.findAndCountAll({ where: condition, offset, limit, order:[['id', 'DESC']] })
    .then(data => {
      if (!data) {
        return res.status(404).send({ message: "Game Not found." });
      }
      const response = getPagingData(data, page, limit);
      res.status(200).send(response);
    })
    .catch(err => {
      res.status(500).send({ message: err.message });
    });
};

exports.findOne = (req, res) => {
  const id = req.params.id;

  Game.findByPk(id)
    .then(data => {
      if (!data) {
        return res.status(404).send({ message: "Game Not found." });
      }
      res.status(200).send(data);
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving Game with id=" + id
      });
    });
};

exports.create = (req, res) => {
  // Validate request
  if (!req.body.title) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
    return;
  }

  // Create a Game
  const game = {
    game_name: req.body.game_name,
    game_rating: req.body.game_rating,
    game_icon_link: req.body.game_icon_link,
    game_cover_link: req.body.game_cover_link,
    game_ios_link: req.body.game_ios_link,
    game_android_link: req.body.game_android_link,
    game_h5_link: req.body.game_h5_link,
    game_ios_status: req.body.game_ios_status ? req.body.game_ios_status : false,
    game_android_status: req.body.game_android_status ? req.body.game_android_status : false,
    game_h5_status: req.body.game_h5_status ? req.body.game_h5_status : false,
    game_total_download: req.body.game_total_download,
    game_release_date: req.body.game_release_date,
    game_status: req.body.game_status ? req.body.game_status : false
  };

  // Save Tutorial in the database
  Game.create(game)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the Game."
      });
    });
};

exports.update = (req, res) => {
  const id = req.params.id;

  Game.update(req.body, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Game was updated successfully."
        });
      } else {
        res.send({
          message: `Cannot update Game with id=${id}. Maybe Game was not found or req.body is empty!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error updating Game with id=" + id
      });
    });
};

exports.delete = (req, res) => {
  const id = req.params.id;

  Game.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Game was deleted successfully!"
        });
      } else {
        res.send({
          message: `Cannot delete Game with id=${id}. Maybe Game was not found!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Could not delete Game with id=" + id
      });
    });
};

exports.deleteAll = (req, res) => {
  Game.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.send({ message: `${nums} Game were deleted successfully!` });
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while removing all Game."
      });
    });
};

