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
    all Requerd gems and bundle are included ex:gem "mysql2".<br>
--------------------------------------------------------------------------------------------
# Database Configuration<br>
    You can change the DB File in \mytestapi\config\database.yml.<br>

    change the adapter in to mysql2 and adding user name and password and db name in mysql sever.<br>

    adapter: mysql2
    username: root
    password:

    set the database in development:
    database: blog1


----------------------------------------------------------------------------------------------

# Database Migrations
    You can Run migration Command below its create DB and create table and Data Seeding<br>

    rake db:create
    rails db:migrate
    rails db:seed



* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
