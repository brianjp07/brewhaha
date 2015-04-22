# Project 6
## Ruby on Rails Project

## Roles
* Overall Project Manager: Abby Haseley
* Coding Manager: Cameron Adams
* Testing Manager: Ryan Bates
* Documentation: William Osler

## Contributions
Abby: Created the Orders scaffold and all associated models/views/controllers. 
Brian: Did a lot of the initial setup and bootstrap styling, making sure everything flowed across pages.
Cameron: Also worked on styling and the orders page, as well as maps integration.
Ryan: Worked on the Cart and associated work flows.
William: Created Users model and all associated views and controllers using devise. Also helped with page styling.

##Pair Programming
A lot of pair programming occurred during this project, mainly with the Orders controller. Though Abby took the lead, during the group meeting held on Tuesday, 4/21, everyone helped her set up the controller methods. 

##Instructions for User
To start the server, `cd` into the brewhaha directory and:

    # Install dependencies
    bundle install

    # Setup the database
    rake db:setup

    # Start background job processing
    bin/delayed_job start

    # Finally, start the rails server
    rails s

You are directed to a page with the choice to either sign in or create an account. If this is your first time, create an account. There will be the choice to either order coffee or deliver coffee-this determines your role in the system. 

==>Choose Order
After creating your account, you will go to a page where you can create an order. Currently, you can order only coffee, so select the amount (between 1-25), where it will be deliver (be as specific as possible), and how long until it expires in minutes. If not accepted by that time the order will expire. When an order is accepted, you will be charged via PayPal (as this is not real, we did not fully implement this, so nothing will happen). Then, were this a real thing, you would be delivered coffee from the producer.

==>Choose Deliver
You will be directed to a page where there is a list of orders. On this page, there will be a table containing a list of orders, as well as an embedded Google map. By clicking on the location link in a specific order, the map will update to that location.
There is also the option for the producer to fulfill the order or delete it as well. By fulfilling the order, the user will then be held responsible for delivering the order. They are given a confirmation page and the user is then charged. The producer can then go back to the order page to fulfill more orders as they please.


!!!!!!CAMERON YOUR STUFF HERE!!!!!!



##Testing
Testing was done completely manually by all members for their individual parts. There were no automated tests cases because this process was more easily tested manually.

## Technologies Used

This project uses the following extra rubygems and resources:
* boostrap-sass: A CSS foundation library in SASS
* devise: User management
* bh: Helper methods for bootstrap
* haml: A dry, clean alternative to HTML
* delayed-job: Backend for running Active Jobs

In addition, we used the following new features of rails:
* ActiveJob (4.2) - Run background jobs to check for expired orders
* ActiveRecord Enums (4.1) - Use convenient enum syntax for ActiveRecord objects
  (User.role and Order.status)

