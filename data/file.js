module.exports = function() {
    var faker = require("faker");
    var _ = require("lodash");
    return {

        categories: _.times(6, function(n) {
            return {
                image: faker.random.image(),
                short_description: faker.lorem.sentence(),
                category_ID: faker.random.uuid()
            };

        }),

        sub_categories: _.times(100, function(n) {
            return {
                image: faker.random.image(),
                short_description: faker.lorem.sentence(),
                category_ID: faker.random.uuid()
            };

        }),

        search: _.times(100, function(n) {
                return {
                    image: faker.random.image(),
                    short_description: faker.lorem.sentence(),
                    gtin13: faker.random.uuid(),
                    price: faker.commerce.price()

                };

            })
            //, ...
    };
};
