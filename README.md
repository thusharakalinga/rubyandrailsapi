#                            RUBY AND RAILS REST API SAMPLE
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
    * appartment List
        End point: http://localhost:3000/api/v1/apartment
        Method: GET
        {
        "status": "SUCESS",
        "message": "Loaded Apartment",
        "data": [
            {
                "id": 6,
                "name": " Sky Touch Villa",
                "description": "Penthouse apartment with sky line view",
                "price": " 40 Million",
                "location": " Huge City, Sand Island",
                "created_at": "2022-01-11T05:15:52.143Z",
                "updated_at": "2022-01-11T05:15:52.143Z"
            }
           ]
          }
      -----------------------------------------------------
     * Apartment Detail
        End point: http://localhost:3000/api/v1/apartment/1
        Method: GET
        Out Put:
        {
            "status": "SUCESS",
            "message": "Loaded Apartment",
            "data": {
                "id": 1,
                "name": " Blue Jeans Villa",
                "description": "This is the beginner level apartment with basic amenities include",
                "price": "10 Million",
                "location": " Big City, Coral Island",
                "created_at": "2022-01-11T05:15:52.107Z",
                "updated_at": "2022-01-11T05:15:52.107Z"
            }
        }
       *Add New Apartment Detail
        End point: http://localhost:3000/api/v1/apartment
        Method: POST
        Headers : Content-Type: application/json
        In Put: Body
        {
        "name":"test 111",
        "description":"jhkjhkjhkjh",
        "price":"2222",
        "location":"jhkjhkjhkjh"
        }
        *Delete Apartment Detail
         End point: http://localhost:3000/api/v1/apartment/1
         Method: DELETE
         
        *.Update Apartment Detail
          End point: http://localhost:3000/api/v1/apartment/2
          Method: PUT
          Headers : Content-Type: application/json
          In Put: Body
            {
            "name":"kalinga",
            "description":"asd",
            "price":"222ww",
            "location":"asdaaa"
            }
      #Booking Reservation
     * Booking List
        End point: http://localhost:3000/api/v1/booking
        Method: GET
        Out Put:
        {
            "status": "SUCESS",
            "message": "Loaded Bookings",
            "data": [
                {
                    "id": 1,
                    "booking_date": "3",
                    "booking_time": "jhkjhkjhkjh",
                    "appartment_id": "3",
                    "client_name": "jhkjhkjhkjh",
                    "client_email": "sdsadasd44",
                    "isbook": "1",
                    "created_at": "2022-01-11T05:19:08.423Z",
                    "updated_at": "2022-01-11T05:19:08.423Z"
                }
            ]
        }
        *Booking Details
        End point: http://localhost:3000/api/v1/booking/1
        Method: GET
        Out Put:
        {
            "status": "SUCESS",
            "message": "Loaded Bookings",
            "data": [
                {
                    "id": 1,
                    "booking_date": "3",
                    "booking_time": "jhkjhkjhkjh",
                    "appartment_id": "3",
                    "client_name": "jhkjhkjhkjh",
                    "client_email": "sdsadasd44",
                    "isbook": "1",
                    "created_at": "2022-01-11T05:19:08.423Z",
                    "updated_at": "2022-01-11T05:19:08.423Z"
                }
            ]
        }
        
      * Add New Booking Detail
        End point: http://localhost:3000/api/v1/booking/
        Method: POST
        Headers : Content-Type: application/json
        In Put: Body
        {
        "booking_date":"3",
        "booking_time":"jhkjhkjhkjh",
        "appartment_id":"3",
        "client_name":"jhkjhkjhkjh",
        "client_email":"sdsadasd44",
        "isbook":"1"
        }
        Out Put
        {
            "status": "SUCESS",
            "message": "Apartment Booking saved",
            "data": {
                "id": 2,
                "booking_date": "5",
                "booking_time": "jhkjhkjhkjh",
                "appartment_id": "3",
                "client_name": "jhkjhkjhkjh",
                "client_email": "sdsadasd44",
                "isbook": "1",
                "created_at": "2022-01-11T19:02:16.842Z",
                "updated_at": "2022-01-11T19:02:16.842Z"
            }
        }

      * Error and Validation
        when trying to book an apartment that has been already booked system given error.
        Error:
        {
            "status": "ERROR",
            "message": "Unable To booking !selected date alredy Booked!!!... Time Try Anther Day"
        }

 
------------------------------------------------------------------------------------------------
* Services (job queues, cache servers, search engines, etc.)
------------------------------------------------------------------------------------------------
* Deployment instructions
------------------------------------------------------------------------------------------------
* Testing
------------------------------------------------------------------------------------------------
