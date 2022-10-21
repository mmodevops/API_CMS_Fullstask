const db = require("../models");
const Ads = db.ads;
const sequelize = db.sequelize;

const Op = db.Sequelize.Op;

const getPagination = (page, size) => {
  const limit = size ? +size : 10;
  const offset = page ? page * limit : 0;

  return { limit, offset };
};

  const getPagingData = (data, page, limit) => {
    const { count: totalAds, rows: adsInfo } = data;
    const currentPage = page ? +page : 0;
    const totalPages = Math.ceil(totalAds / limit);

    return { totalAds, adsInfo, totalPages, currentPage };
  };

exports.findAll = (req, res) => {
  const { page, size, title } = req.query;
  const { limit, offset } = getPagination(page, size);
  var condition = title ? { app_ads_title: { [Op.like]: `%${title}%` } } : null;

  Ads.findAndCountAll({ where: condition, offset, limit, order:[['app_ads_id', 'DESC']] })
    .then(data => {
      if (!data) {
        return res.status(404).send({ message: "Ads Not found." });
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
  var condition = title ? { app_ads_title: { [Op.like]: `%${title}%` }, app_ads_status:true } : { app_ads_status:true };

  Ads.findAndCountAll({ where: condition, offset, limit, order:[['app_ads_id', 'DESC']] })
    .then(data => {
      if (!data) {
        return res.status(404).send({ message: "Ads Not found." });
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

  Ads.findByPk(id)
    .then(data => {
      if (!data) {
        return res.status(404).send({ message: "Ads Not found." });
      }
      res.status(200).send(data);
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving Ads with id=" + id
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

  // Create a Ads
  const ads = {
    app_ads_title: req.body.app_ads_title,
    app_ads_content: req.body.app_ads_content,
    app_ads_image_link: req.body.app_ads_image_link,
    app_ads_link: req.body.app_ads_link,
    app_ads_display: req.body.app_ads_display ? req.body.app_ads_display : false,
    app_ads_status: req.body.app_ads_status ? req.body.app_ads_status : false
  };

  // Save Tutorial in the database
  Ads.create(ads)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the Ads."
      });
    });
};

exports.update = (req, res) => {
  const id = req.params.id;

  Ads.update(req.body, {
    where: { app_ads_id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Ads was updated successfully."
        });
      } else {
        res.send({
          message: `Cannot update Ads with id=${id}. Maybe Ads was not found or req.body is empty!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error updating Ads with id=" + id
      });
    });
};

exports.delete = (req, res) => {
  const id = req.params.id;

  Ads.destroy({
    where: { app_ads_id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Ads was deleted successfully!"
        });
      } else {
        res.send({
          message: `Cannot delete Ads with id=${id}. Maybe Ads was not found!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Could not delete Ads with id=" + id
      });
    });
};

exports.deleteAll = (req, res) => {
  Ads.destroy({
    where: {},
    truncate: false
  })
    .then(nums => {
      res.send({ message: `${nums} Ads were deleted successfully!` });
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while removing all Ads."
      });
    });
};
