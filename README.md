# Mario's Foods



#### By Reid Ashwill

## Description

This app allows the user to create products, and reviews of them.

## Specs

1   User can create instances of the Product class 
      Behavior:  create / post  Input: Shark   Output: products view now has the product added

2   User can save instances of the Product class to a pqsl database
      Behavior:  create / post  Input: Shark   Output: products view now has the product added

3   User can update instances of the Product class
      Behavior:  update / post  Input: Hobbit   Output: products view now has the product Hobbit where another was

4   User can delete instances of the Product class
      Behavior:  delete / destroy  Input: Shark / delete button  Output: products view no longer has the product Shark

5   User can list and view instances of the Product class
      Behavior: GET The products view lists all products

6  User can create instaces of Review class
      Behavior:  create / POST input name: Reid rating: 5 the product view now shows a rating from reid

7  User can list all Instances of review class belonging to an instance of product class
      Behavior: GET the product view lists all reviews


## User Stories

As the admin, i would like to be able to add, update, and delete new products

As the admin i would like to be able to read all product reviews

As a user i would like to be able to see a detailed view of each product when i click on them.

As a user i would like to read all product reviews to guide my purchasing descision.

## Setup/Installation Requirements

* _Navigate to https://github.com/reidashwill/week_11_project_
* _clone the respository to your local machine_
* _navigate to the cloned directory and open in your text editor of choice to view code_
* _run the command 'bundle install' to install all gems used in this project_
* _run the command 'rspec' to run the suite of tests included_
* _run the rommand "rails s" to start a local rails server_
* _navigate your browser of choice to localhost:3000_




## Known Bugs
When creating a product, if any of the fields are left blank we are met with an error:

"undefined local variable or method `object' for #<#<Class:0x00007fdd82b11108>:0x00007fdd86010408>
Did you mean?  object_id"

unsure what is wrong, as it was working earlier in the day with error messages rendering on my views.


## Technologies Used

* _Ruby_
* _Rails_
* _Rspec_
* _Capybara_
* _HTML (erb)_
* _Bootstrap_

### License

*Licensed under the MIT license*

Copyright (c) 2020 **_Reid Ashwill_**