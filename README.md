## Requirements

Make sure you have these softwares in your machine:

* Ruby (2.3.3)
* Elasticsearch (2.4.2 or greater)
* PostgreSQL (9.3 or greater)
* Redis (2.8 or greater)

## Running the app

1. Clone the application repository

2. Bundle the dependencies. In the app folder:

        bundle install
              
3. Config your database.yml
              
              sudo cp config/database.yml.sample config/database.yml

4. Create the database:
              
              rails db:setup
              
5. Run the app
              
              foreman start
              
6. Run the tests:
              
              rspec

             
## Documentation
 Check the api documentation:[here](/doc/api/index.markdown)
             
Enjoy :)              
              
              
