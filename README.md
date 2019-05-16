# Welcome to QuickShop!

This project was created with Rails 5 + PostgreSQL with GraphQL. 


Full documentation of API: https://quickshop-shopify.herokuapp.com/


**NOTE:** All requests to the GraphQL endpoint should be a POST request.

The GraphQL API allows users to access and manipulate product data through queries and mutations to perform actions such as purchasing product by id, adding items to shopping cart, checking out shopping cart etc.

## Usage of API
To use the API, you could use API testing tools such as Insomnia (Preferred tool as it provides GraphQL support) and Postman

The GraphQL endpoint is available at [https://quickshop-shopify.herokuapp.com/graphql] (POST)

Sample query:
{"query":"query {product_by_id(product_id: 1){title,description,price,shipping,inventory_count,sold_count}}"}

## Running Project locally

0. Install required dependencies:

    * Ruby
    
    * Ruby on Rails
    
    * PostgreSQL


1. Install dependencies using `bundle install`
2. Setup database using `rails db:create` and `rails db:migrate`
3. Seed product data using `rails db:seed`
4. Start the server with `rails server`!

The GraphQL endpoint will be available at `\graphql`

The GraphQL IDE will be available at `\graphql` and can accessed be through browser

The full API documentation will be available at `\` and can be navigated through browser


## Complete purhcase with a shopping cart

1. Create a shopping cart with your desired user_id
```
{"query":"mutation {create_shopping_cart(user_id: 101123){user_id, completed, total_cost, cart_items{product_id, quantity}}}"}
```

2. Add items to your shopping cart
```
{"query":"mutation {add_to_cart(user_id: 101123, product_id: 1, quantity: 2){user_id, completed, total_cost, cart_items{product_id, quantity}}}"}
```

3. Check out your shopping cart
```
{"query":"mutation {check_out_cart(user_id: 101123){user_id, completed, total_cost, cart_items{product_id, quantity}}}"}
```

Additional functionalities can be found in the API documentation [here](https://quickshop-shopify.herokuapp.com/)

## Security
* The GraphQL services only provide HTTPS endpoints, which protects authentication credentials in transit
* All the GraphQL endpoint queries have error handling that allows user to know why their requests has failed.

## Coding style

Follows Shopify's Ruby style guide: https://shopify.github.io/ruby-style-guide/rubocop.yml


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details


