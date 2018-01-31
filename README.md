# Gemnote

> sample backend for gemnote

## About

This project uses [Feathers](http://feathersjs.com). An open source web framework for building modern real-time applications.

## Getting Started

1. You will need postgres >= v9.4. Install postgres: https://launchschool.com/blog/how-to-install-postgresql-on-a-mac
    ```
    brew update
    brew install postgres
    brew tap homebrew/services
    brew services start postgresql
    ```

2. Build the db locally. This will also generate 3 products in the db.
    ```
    make build_db
    ```

3. Make sure you have [NodeJS](https://nodejs.org/) and [npm](https://www.npmjs.com/) installed. I've been using nvm for node versioning. There is a .nvmrc specifying the node version.

4. Install your dependencies

    ```
    cd path/to/gemnote; npm install
    ```

5. Start your app

    ```
    npm start
    ```

## Testing

I didn't write tests, but `npm run test` will run the tests that were generated from feathers.
Send the json from new_product.json as a POST request to test adding a product to the db.

## API

| URL           | Request       | Action    |
| ------------- |:-------------:| :----:    |
| /products                 | GET   | gets all of the products in the db. |
| /products/{product_id}    | GET   | gets a specific product |
| /products                 | POST  | create a new product |

## TODOs

* sku could be replaced with uuid because we don't actually need to extract any product data from it
* consider using a 'product_group' table and a 'product' table. Each variant becomes a row in the product table.
* investigate jsonb indexing in postgres.
* auth (feathers generate auth)
* add 'product_category' table and 'product_category_membership' table, create many-many relationship.
* update models to allow querying /products by category
