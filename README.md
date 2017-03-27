# Alphablog

This Rails app features the basic CRUD operations for articles, users and categories. 
At the moment, regular users are restricted to creating articles and deleting their own articles.
Admin users can delete any articles and users in addition to creating and delete categories.

## How to use

Head on over to: http://alpha-blog-andy.herokuapp.com/

As a logged out user you cannot edit or create articles so please sign up to access these features.
There are also admin-only features, only admins can delete other users articles, and create categories. 

## Getting started locally

1. Clone this branch, then `cd` into the directory.
2. Run `bundle install`
4. Run `rake db:migrate`
5. Run `rails server`
6. Go to `localhost`