## E-Product Cart

The objective of this project is to develop a general purpose e-commerce store
where any e-product (such as pdf, docs, csv, ppt etc.) can be bought from the comfort of home through the Internet.


## Live Application
https://eproduct-cart.herokuapp.com/
You can access admin section by using credentials:
```sh
username: 1991sahilchopra@gmail.com
password: admin123
```
## Installation

Make sure you have [Ruby](https://www.ruby-lang.org), PostgreSQL, ImageMagick and [Bundler](http://bundler.io)

```sh
git clone https://github.com/sahilchopra/eproduct_cart.git
cd eproduct_cart
bundle
```

Setup database details in config/database.yml file and set admin login details into db/seeds.rb. Then continue with following commands:
```sh
rake db:create
rake db:migrate
rake db:seed
```

Configure config/sunspot.yml if you want to change default setting.
Start the packaged Solr distribution with:
```sh
bundle exec rake sunspot:solr:start # or sunspot:solr:run to start in foreground
```

Setup authy key and url in config/initializers/authy.rb:
```sh
Authy.api_key = '<authy_key>'
Authy.api_uri = '<authy_url>'
```

We are using gmail account to send emails. Setup username and password into config/secret.yml. Change SMTP setting if you want to use other service to send emails:
```sh
mail_username: <user_name>
mail_password: <password>
```

Start your rails server. That's it! Enjoy your new Rails application!.
Open http://locahost:3000

Note: To stop and reindex sunspot solr using:
```sh
bundle exec rake sunspot:solr:stop
bundle exec rake sunspot:reindex
```

## How to run the test suite:
```sh
bundle exec rspec
```