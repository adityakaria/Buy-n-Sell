# Buy'n'Sell web application using RoR
***
- [Github Link](https://github.com/adityakaria/Buy-n-Sell)

## Steps to setup
---
1. First clone the repository to your desired location
2. Run the following commands in you teminal:
```bash
bundle install
rake db:create
rake db:migrate
rails s
```

## Purpose: 
---
Make a web application for students of NITK to buy and share items such as bicycle, books, etc.

## Creating the application:
---

- Create the application with the name iris1
    `rails create new iris1`

- Navigate to the folder 

- Add required gems to Gemfile:
    ```ruby
    gem 'bulma-rails', '>= 0.6.1'
    gem 'simple_form', '>= 3.5'
    gem 'devise', '>= 4.4'
    gem 'gravatar_image_tag', '>= 1.2'
    gem 'carrierwave'
    gem 'mini_magick'
    ```

    ```ruby
    group :development, :test do
        gem 'better_errors', '~> 2.4'
        gem 'guard', '~> 2.14', '>= 2.14.1'
        gem 'guard-livereload', '~> 2.5', '>= 2.5.2'
    end
    ```

- Run on terminal
    ```bash
    bundle install
    ```
- Run scaffolds and devise genereators to make the models and controllers

- Use bulma and simple forms for UI generation


## Features Implemented
---
- Every user is able to see all the products uploaded by others.
- A user can can request for a product as well as upload an item to sell (After logging in).
- Once sold, user mark the product as sold which removes it from the list of products
available to sell.
- The product uploaded has the necessary contact details so that other
prospective users can contact the seller.
- Uploading an item to sell has the following parameters:
  - Images
  - Title
  - Description
  - Expected cost to sell
  - Brand (Opt)
  - Condition (Opt)
- Implemented basic UI/UX to make the application easier to use.

## Features not Implemented
---
- A user can request for a product (provived it's not his own), and the seller is notified about it, but he/she does not know the requester id specifically

## Known Bugs
---
- No known bugs so far

## references used:
---
- [Ruby on Rails Tutorial by Michael Hartl](https://www.railstutorial.org/book/frontmatter)
- [Undoing things in Rails](https://www.learneroo.com/modules/137/nodes/769)
- [How to use 'dynamic CSS' in Rails](https://stackoverflow.com/questions/37638649/how-to-use-dynamic-css-in-rails)
- [API Docks](https://apidock.com)
- [Understanding the basics of Ruby on Rails](https://medium.freecodecamp.org/understanding-the-basics-of-ruby-on-rails-sql-databases-and-how-they-work-7a628cd42073)
- [Rails Image Upload](https://code.tutsplus.com/tutorials/rails-image-upload-using-carrierwave-in-a-rails-app--cms-25183)
- [Build Dynamic websites with Rails](https://openclassrooms.com/en/courses/4510766-build-dynamic-websites-with-rails/4704551-write-tests)
- [Build an online music shop with rails](https://web-crunch.com/ruby-on-rails-ecommerce-music-shop/)
- [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
