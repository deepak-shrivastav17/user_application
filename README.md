# User Campaign Application

This is a Ruby on Rails application that uses MySQL as the database. Follow the instructions below to set up and run the application on your local machine.

## Prerequisites

Make sure you have the following installed:

- [Ruby 2.6.4](https://www.ruby-lang.org/en/downloads/)
- [Rails 6.1.7](https://guides.rubyonrails.org/v6.1/getting_started.html)
- [MySQL](https://dev.mysql.com/downloads/mysql/)
- [Bundler 2.4.22](https://bundler.io/)
- [Yarn](https://classic.yarnpkg.com/en/docs/install/)

## Getting Started

1. **Clone the repository:**

   ```bash
   git clone https://github.com/deepak-shrivastav17/user_application.git
   cd user_application
   ```

2. **Install dependencies:**

   ```bash
   bundle install
   ```

3. **Configure the database:**

   Make sure MySQL is running on your local machine. Update the `config/database.yml` file with your MySQL configuration if needed. The default configuration is as follows:

   ```yaml
   default: &default
     adapter: mysql2
     encoding: utf8mb4
     pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
     username: root
     password:
     socket: /var/run/mysqld/mysqld.sock

   development:
     <<: *default
     database: user_campaign_application

   test:
     <<: *default
     database: user_campaign_test

   production:
     <<: *default
     database: user_campaign_production
     username: user_campaign
     password: <%= ENV['USER_CAMPAIGN_DATABASE_PASSWORD'] %>
   ```

4. **Create and migrate the database:**

   ```bash
   rails db:create
   rails db:migrate
   ```

5. **Run the Rails server:**

   ```bash
   rails server
   ```

   The application should now be running on [http://localhost:3000](http://localhost:3000).
