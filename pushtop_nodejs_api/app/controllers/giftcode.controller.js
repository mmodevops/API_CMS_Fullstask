const db = require("../models");
const Giftcode = db.giftcode;
const sequelize = db.sequelize;

const Op = db.Sequelize.Op;

const getPagination = (page, size) => {
  const limit = size ? +size : 10;
  const offset = page ? page * limit : 0;

  return { limit, offset };
};

  const getPagingData = (data, page, limit) => {
    const { count: totalGiftcode, rows: giftcodeInfo } = data;
    const currentPage = page ? +page : 0;
    const totalPages = Math.ceil(totalGiftcode / limit);

    return { totalGiftcode, giftcodeInfo, totalPages, currentPage };
  };

exports.findAll = (req, res) => {
  const { page, size, title } = req.query;
  const { limit, offset } = getPagination(page, size);
  var condition = title ? { giftcode_code: { [Op.like]: `%${title}%` } } : null;

  Giftcode.findAndCountAll({ 
        // attributes: { include: [
        //     [sequelize.literal('(SELECT COUNT(*) FROM app_giftcode_detail WHERE app_giftcode_detail.giftcode_event_id = app_giftcode_event.giftcode_event_id and app_giftcode_detail.giftcode_detail_status=0)'),'remain_giftcode'],
        //     [sequelize.literal('(SELECT COUNT(*) FROM app_giftcode_detail WHERE app_giftcode_detail.giftcode_event_id = app_giftcode_event.giftcode_event_id)'),'total_giftcode']
        // ]},
        where: condition, offset, limit, order:[['giftcode_detail_id', 'DESC']] })
    .then(data => {
      if (!data) {
        return res.status(404).send({ message: "Giftcode Not found." });
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
  var condition = title ? { giftcode_event_name: { [Op.like]: `%${title}%` }, giftcode_detail_status: true } : { giftcode_detail_status: true };

  Giftcode.findAndCountAll({ 
        // attributes: { include: [
        //     [sequelize.literal('(SELECT COUNT(*) FROM app_giftcode_detail WHERE app_giftcode_detail.giftcode_event_id = app_giftcode_event.giftcode_event_id and app_giftcode_detail.giftcode_detail_status=0)'),'remain_giftcode'],
        //     [sequelize.literal('(SELECT COUNT(*) FROM app_giftcode_detail WHERE app_giftcode_detail.giftcode_event_id = app_giftcode_event.giftcode_event_id)'),'total_giftcode']
        // ]},
        where: condition, offset, limit, order:[['giftcode_detail_id', 'DESC']] })
    .then(data => {
      if (!data) {
        return res.status(404).send({ message: "Giftcode Not found." });
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

  Giftcode.findByPk(id)
    .then(data => {
      if (!data) {
        return res.status(404).send({ message: "Giftcode Not found." });
      }
      res.status(200).send(data);
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving Giftcode with id=" + id
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

  // Create a Gift
  const giftcode = {
    giftcode_event_id: req.body.giftcode_event_id,
    giftcode_code: req.body.giftcode_code,
    event_type_id: req.body.event_type_id,
    giftcode_detail_status: req.body.giftcode_detail_status ? req.body.giftcode_detail_status : false
  };

  // Save Tutorial in the database
  Giftcode.create(giftcode)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the Giftcode."
      });
    });
};

exports.update = (req, res) => {
  const id = req.params.id;

  Giftcode.update(req.body, {
    where: { giftcode_detail_id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Giftcode was updated successfully."
        });
      } else {
        res.send({
          message: `Cannot update Giftcode with id=${id}. Maybe Giftcode was not found or req.body is empty!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error updating Giftcode with id=" + id
      });
    });
};

exports.delete = (req, res) => {
  const id = req.params.id;

  Giftcode.destroy({
    where: { giftcode_detail_id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Giftcode was deleted successfully!"
        });
      } else {
        res.send({
          message: `Cannot delete Giftcode with id=${id}. Maybe Giftcode was not found!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Could not delete Giftcode with id=" + id
      });
    });
};

exports.deleteAll = (req, res) => {
  Giftcode.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.send({ message: `${nums} Giftcode were deleted successfully!` });
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while removing all Giftcode."
      });
    });
};