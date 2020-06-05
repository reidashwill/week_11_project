# Mario's Foods



#### By Reid Ashwill

## Description

This app allows the user to create products, and reviews of them.

## Specs

1   Admin can create instances of the Product class 
      Behavior:  create / post  Input: Shark   Output: products view now has the product added

2   Admin can save instances of the Product class to a pqsl database
      Behavior:  create / post  Input: Shark   Output: products view now has the product added

3   Admin can update instances of the Product class
      Behavior:  update / post  Input: Hobbit   Output: products view now has the product Hobbit where another was

4   Admin can delete instances of the Product class
      Behavior:  delete / destroy  Input: Shark / delete button  Output: products view no longer has the product Shark

5   User can list and view instances of the Product class
      Behavior: GET The products view lists all products

6  User and Admin can create instaces of Review class
      Behavior:  create / POST input name: Reid rating: 5 the product view now shows a rating from reid

7  Admin can list all Instances of review class belonging to an instance of product class
      Behavior: GET the product view lists all reviews


## User Stories

As the admin, i would like to be able to add, update, and delete new products

As the admin i would like to be able to read all product reviews

As a user i would like to be able to see a detailed view of each product when i click on them.

As a user i would like to read all product reviews to guide my purchasing descision.

As an admin, I want to ensure that other users don't have access to CRUD functionality.

As an admin, I want to ensure that other users don't have access to CRUD functionality.

## Setup/Installation Requirements

* _Navigate to https://github.com/reidashwill/week_11_project_
* _clone the respository to your local machine_
* _navigate to the cloned directory and open in your text editor of choice to view code_
* _run the command 'bundle install' to install all gems used in this project_
* _run the command 'rspec' to run the suite of tests included currently passing all tests with 99% coverage according to simplecov_
* _run the rommand "rails s" to start a local rails server_
* _navigate your browser of choice to localhost:3000_




## Known Bugs
No known bugs at this time


## Technologies Used

* _Ruby_
* _Rails_
* _Rspec_
* _Capybara_
* _Simplecov_
* _HTML (erb)_
* _Bootstrap / SASS_

### License

*Licensed under the MIT license*

Copyright (c) 2020 **_Reid Ashwill_**