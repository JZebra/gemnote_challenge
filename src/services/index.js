const products = require('./products/products.service.js');
module.exports = function (app) {
  app.configure(products);
};
