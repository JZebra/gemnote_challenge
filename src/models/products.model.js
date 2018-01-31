// See http://docs.sequelizejs.com/en/latest/docs/models-definition/
// for more of what you can do here.
const Sequelize = require('sequelize');

const DataTypes = Sequelize.DataTypes;

module.exports = function (app) {
  const sequelizeClient = app.get('sequelizeClient');
  const products = sequelizeClient.define('products', {
    id: {
      primaryKey: true,
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    category_ids: {
      type: DataTypes.ARRAY(DataTypes.INTEGER),
      allowNull: true
    },
    flags: {
      type: DataTypes.INTEGER,
      allowNull: false,
      defaultValue: 0
    },
    data: {
      type: DataTypes.JSONB,
      allowNull: false
    }
  }, {
    createdAt:'created_at',
    updatedAt:'updated_at',
    hooks: {
      beforeCount(options) {
        options.raw = true;
      }
    }
  });

  // eslint-disable-next-line no-unused-vars
  products.associate = function (models) {
    // Define associations here
    // See http://docs.sequelizejs.com/en/latest/docs/associations/
  };

  return products;
};
