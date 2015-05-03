# RunSimpleRender

Simple approach to have a more powerful presentation in rails.

The idea behind this gem is to be able to tie models to the appropriate
views for the maximum reusability while **avoiding**:

a. helpers with inline html

b: creation of additional classes (with more html within the methods)

c. bloating the models with presentation methods (bad practice)

d. a learning curve (this is extremely easy to use)

## Latest Update
####May 2 2015)
+ Link to GitHub.com
####April 17 2015
+ Updates to documentation
+ Optionally pass arguments to the rendition. This will allow an even better reuse of the renditions


       @usr.render(:card, args:{ background_picture: 'bg_picture.jpg'})



## Installation

Add this line to your application's Gemfile:


    ruby gem 'run_simple_render'


And then execute:

    $ bundle

Or install it yourself as:

    $ gem install run_simple_render

## Usage

A. Include RunSimpleRender in the model


       class User < ActiveRecord::Base
         include RunSimpleRender



B. Create your model views under a folder called renditions


    $ /app/views/renditions/[modelname]/


   ex. /app/views/renditions/user/default.html.erb:


    Name: <%=obj.last_name %>, <%obj.first_name%>


   ex. /app/views/renditions/user/email.html.erb:


      Email: <%=obj.email %>



C. Render the appropriate view as needed and were needed

    @usr = User.find(1)

    @usr.render          #Name: Louis, Joe

    @usr.render(:email)  #Email: joe@louis.com


## More

You can also call related models

    @usr = User.find(1)

    @usr.company.render(:short_description)

Or render a collection from the view  ex. /app/views/renditions/company/all_users.html.erb:

    Company: <%= obj.name %>

    <p>Users</p>
    <ul>
      <% obj.users.each |u| %>
        <li><%= u.render %> [ <%= u.email %>]</li>
      <% end %>
    </ul>


## GitHub

https://github.com/s1mpl3/run_simple_render


