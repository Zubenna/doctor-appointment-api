## Doctor Appointment API (Final Capstone Project)

This is an API Backend that feeds the doctor appointment app. This API is built using rails. It is an avenue for the front-end app built with React.js to send and receive data from the backend. User authentication, model associations, and validations are embedded in this API.

## Features 
- Model associations implemented.
- CRUD implementation for rgistrations route.
- CRUD implementation for appointments route.
- CRUD implementation for doctors route.
- POST, GET and DELETE route for sessions route. 
- Data presence validations for User, Doctor, and Appointment models.
- Unique validations for email and username.

## Built With
- Ruby v2.7.1
- Rails v6.0.3.7
- bcrypt
- PostgreSQL
### Tested With
- RSpec
- Capybara
- shoulda-matchers
- factory_bot_rails
- faker

## ENDPOINTS SUMMARY

| Method   |        Endpoint         | Public |       Action                       |
|:--------:|:-----------------------:|:------:|:----------------------------------:|
|  POST    | /api/v1/registrations   | True   |Register a new user                 |
|  POST    | /api/v1/login           | True   |Login registered user               |
|  GET     | /api/v1/doctors         | False  |Fetch all doctors                   | 
|  GET     | /api/v1/doctors/id      | False  |Fetch a doctor's details            |
|  POST    | /api/v1/appointments    | False  |Create appointments                 |
|  GET     | /api/v1/appointments/id | False  |Fetch booked appointments for a user|
|  POST    | /api/v1/logout          | False  |Logs out a current user             |


## Project SetUp (Reproduce project on local computer)

Get a local copy of the file. Clone with HTTPS using the command below.

```
git clone https://github.com/Zubenna/doctor-appointment-api.git
```
## Access project folders 
```
cd doc_appointment_api
```
## Install all the dependencies
```
bundle install
```
## You may install yarn if needed, follow the steps below;

```
yarn cache clean

yarn install
```

## Create the database with the following command
```
rails db:create
```
## Migrate the database with the following command
```
rails db:migrate
```
## Populate the database with the following command (Uncomment records in seed.rb)
```
rails db:seed
```
## Testing

### Type rspec in the project root to run tests.
```
rspec
```

## Run the server
- While in the project root, start rails server with the command 'rails server'.

## Live Version
- [Launch App](https://stormy-badlands-31674.herokuapp.com/)

## Author

👤 **Nnamdi Emelu**
- Github: [@zubenna](https://github.com/zubenna)
- Twitter: [@zubenna](https://twitter.com/zubenna)
- Linkedin: [nnamdi-emelu](https://www.linkedin.com/in/nnamdi-emelu/)

##  Contributing
Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Zubenna/doctor-appointment-api/issues)

## Show your support
Give a star if you like this project!

## Acknowledgments
- Project inspired by Microverse Program
