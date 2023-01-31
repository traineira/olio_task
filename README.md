# README
* Ruby version
  - Ruby 3.1.2
* System dependencies
  - MySQL
  - NodeJs
## Configuration
  1. Install `rvm` following these instructions: https://rvm.io/rvm/install
  2. Install `ruby 3.1.2` by following the RVM instruction, found here https://rvm.io/rubies/installing
  3. Install all necessary gems by running:
      ```
      bundle install
      ```
  4. Install Node(version used was v14.16.1) by running by following these instructions https://nodejs.org/en/download/ and then:
     1. Install Yarn by running
        ```
        npm install --global yarn
        ```
     2. Run yarn to install node_modules by running
        ```
        yarn
        ```
  5. Database creation
     Setup the Database by running:
        ```
        rake db:create
        ```
  6. Database initialization
     1. Run database migrations by running:
        ```
        rake db:migrate
        ```
     2. Run test migrations as well:
        ```
        rails db:test:prepare
        ```
## How to run the test suite
  To run tests simply run:
    ```
    rspec
    ```

## How to run the app
  Simply run `rails s` and then visit `http://localhost:3000/`
