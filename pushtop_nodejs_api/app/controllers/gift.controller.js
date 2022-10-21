const db = require("../models");
const Gift = db.gift;
const Giftcode = db.giftcode;
const Game = db.game;
const sequelize = db.sequelize;

const Op = db.Sequelize.Op;

const getPagination = (page, size) => {
  const limit = size ? +size : 10;
  const offset = page ? page * limit : 0;

  return { limit, offset };
};

  const getPagingData = (data, page, limit) => {
    const { count: totalGift, rows: giftInfo } = data;
    const currentPage = page ? +page : 0;
    const totalPages = Math.ceil(totalGift / limit);

    return { totalGift, giftInfo, totalPages, currentPage };
  };
// SELECT n.*, COALESCE(l.Total, 0) AS `total` , COALESCE(c.Remain, 0) AS `remain` 
// FROM `app_giftcode_event` n 
// LEFT JOIN ( SELECT app_giftcode_detail.giftcode_event_id, COUNT(*) AS Total FROM `app_giftcode_detail` GROUP BY app_giftcode_detail.giftcode_event_id ) AS l ON l.`giftcode_event_id` = n.`giftcode_event_id` 
// LEFT JOIN ( SELECT app_giftcode_detail.giftcode_event_id, COUNT(*) AS Remain FROM `app_giftcode_detail` WHERE `giftcode_detail_status` = "0" GROUP BY app_giftcode_detail.giftcode_event_id ) AS c ON c.`giftcode_event_id` = n.`giftcode_event_id` 
// ORDER BY n.`giftcode_event_id` DESC LIMIT 0,10

exports.findAll = (req, res) => {
  const { page, size, title } = req.query;
  const { limit, offset } = getPagination(page, size);
  var condition = title ? { giftcode_event_name: { [Op.like]: `%${title}%` } } : null;

  Gift.findAndCountAll({ 
        // attributes: { include: [
        //     [sequelize.literal('(SELECT COUNT(*) FROM app_giftcode_detail WHERE app_giftcode_detail.giftcode_event_id = app_giftcode_event.giftcode_event_id and app_giftcode_detail.giftcode_detail_status=0)'),'remain_giftcode'],
        //     [sequelize.literal('(SELECT COUNT(*) FROM app_giftcode_detail WHERE app_giftcode_detail.giftcode_event_id = app_giftcode_event.giftcode_event_id)'),'total_giftcode']
        // ]},
        distinct: true,
        where: condition, offset, limit, order:[['giftcode_event_id', 'DESC']] 
      })
    .then(data => {
      if (!data) {
        return res.status(404).send({ message: "Gift Not found." });
      }
      const response = getPagingData(data, page, limit);
      res.status(200).send(response);
    })
    .catch(err => {
      res.status(500).send({ message: err.message });
    });

};

exports.findAllPublished = (req, res) => {
  const { page, size, title } = req.query;
  const { limit, offset } = getPagination(page, size);
  var condition = title ? { giftcode_event_name: { [Op.like]: `%${title}%` }, giftcode_event_status: true } : { giftcode_event_status: true };

  Gift.findAndCountAll({ 
        // attributes: { include: [
        //     [sequelize.literal('(SELECT COUNT(*) FROM app_giftcode_detail WHERE app_giftcode_detail.giftcode_event_id = app_giftcode_event.giftcode_event_id and app_giftcode_detail.giftcode_detail_status=0)'),'remain_giftcode'],
        //     [sequelize.literal('(SELECT COUNT(*) FROM app_giftcode_detail WHERE app_giftcode_detail.giftcode_event_id = app_giftcode_event.giftcode_event_id)'),'total_giftcode']
        // ]},
        distinct: true,
        where: condition, offset, limit, order:[['giftcode_event_id', 'DESC']] })
    .then(data => {
      if (!data) {
        return res.status(404).send({ message: "Gift Not found." });
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

  Gift.findByPk(id)
    .then(data => {
      if (!data) {
        return res.status(404).send({ message: "Gift Not found." });
      }
      res.status(200).send(data);
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving Gift with id=" + id
      });
    });
};

exports.countAllGift = (req, res) => {
  const id = req.params.id;

  Giftcode.count({ 
        where: [{ giftcode_event_id: id }],
        group : ['giftcode_event_id'],
      })
    .then(data => {
      if (!data) {
        return res.status(404).send({ message: "Giftcode Not found." });
      }
      res.status(200).send(data);
    })
    .catch(err => {
      res.status(500).send({ message: err.message });
    });
};

exports.countAllRemainGift = (req, res) => {
  const id = req.params.id;

  Giftcode.count({ 
        where: [{
          giftcode_event_id: id,
          giftcode_detail_status: false
        }],
        group : ['giftcode_event_id'],

      })
    .then(data => {
      if (!data) {
        return res.status(404).send({ message: "Giftcode Not found." });
      }
      res.status(200).send(data);
    })
    .catch(err => {
      res.status(500).send({ message: err.message });
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

  // Create a Gift
  const gift = {
    giftcode_event_name: req.body.giftcode_event_name,
    giftcode_des: req.body.giftcode_des,
    event_type_id: req.body.event_type_id,
    game_id: req.body.game_id,
    giftcode_event_start_date: req.body.giftcode_event_start_date,
    giftcode_event_end_date: req.body.giftcode_event_end_date,
    game_link_share: req.body.game_link_share,
    giftcode_event_status: req.body.giftcode_event_status ? req.body.giftcode_event_status : false,
    giftcode_event_cont: req.body.giftcode_event_cont ? req.body.giftcode_event_cont : false,
    giftcode_event_value: req.body.giftcode_event_value,
    giftcode_event_teaser: req.body.giftcode_event_teaser ? req.body.giftcode_event_teaser : false
  };

  // Save Tutorial in the database
  Gift.create(gift)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the Gift."
      });
    });
};

exports.update = (req, res) => {
  const id = req.params.id;

  Gift.update(req.body, {
    where: { giftcode_event_id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Gift was updated successfully."
        });
      } else {
        res.send({
          message: `Cannot update Gift with id=${id}. Maybe Gift was not found or req.body is empty!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error updating Gift with id=" + id
      });
    });
};

exports.delete = (req, res) => {
  const id = req.params.id;

  Gift.destroy({
    where: { giftcode_event_id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Gift was deleted successfully!"
        });
      } else {
        res.send({
          message: `Cannot delete Gift with id=${id}. Maybe Gift was not found!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Could not delete Gift with id=" + id
      });
    });
};

exports.deleteAll = (req, res) => {
  Gift.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.send({ message: `${nums} Gift were deleted successfully!` });
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while removing all Gift."
      });
    });
};