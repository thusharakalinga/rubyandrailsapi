# README
-------------------------------------------------------------------------------------------
This README would normally document whatever steps are necessary to get the
application up and running.<br>
This Api Is working with Mysql.You can run the mysql in xampp server or ect.</br>
Things you may want to cover:</br>
* Ruby version</br>

    Rails version             7.0.1</br>
    Ruby version              2.7.5p203</br>
    phpMyAdmin                4.9.2</br>


# System dependencies<br>
    all Requerd gems and bundle are included ex:gem "mysql2"
--------------------------------------------------------------------------------------------
# Database Configuration<br>
    You can change the DB File in \mytestapi\config\database.yml

    change the adapter in to mysql2 and adding user name and password and db name in mysql sever

    adapter: mysql2
    username: root
    password:

    set the database in development:
    database: blog1


----------------------------------------------------------------------------------------------

# Database Migrations
    You can Run migration Command below its create DB and create table and Data Seeding

    rake db:create
    rails db:migrate
    rails db:seed

------------------------------------------------------------------------------------------------

# How to run the API
    Run this command in Your CLI
    rails s 
    or rails server
    System runing with http://localhost:3000
------------------------------------------------------------------------------------------------    
# Run API with POSTMAN
    Postman is an API platform for building and using APIs. you can download the postman and setup 
    https://www.postman.com/downloads/
------------------------------------------------------------------------------------------------    
# API End point
    more detail include in API Dcoumantaion please check with API_Documantaion.doc in root folder

------------------------------------------------------------------------------------------------
* Services (job queues, cache servers, search engines, etc.)
------------------------------------------------------------------------------------------------
* Deployment instructions
------------------------------------------------------------------------------------------------
* Testing
------------------------------------------------------------------------------------------------
