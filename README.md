## GoSquared Task

## Description

A simple blogging web application including a user login process with GoSquared implemented.
GoSquared's Basic Tracking has been integrated as well as Vistor Tracking. A simple 'like' feature for blog posts has been created as way to make use of GoSquared Event Tracking.


## Approach to Testing & Development:

- Test Driven Development was used to build application.
- Factory Girl used to substitute fixtures.
- Single Responsibilty Principle adhered to wherever possible.
- Deployed to Heroku

## Screenshots

![Image of Login Page]
(http://i.imgur.com/2RiWWvL.png)

![Image of Blogs Page]
(http://i.imgur.com/h1ClR0z.png)

## Live Site

http://gosquaredtask.herokuapp.com/

###Instructions

To deploy frontend

```
$ https://github.com/russellvaughan/GoSquared
$ cd GoSquared
$ bundle # Installs all backend dependencies
$ Rake db:create # Creates Postgres database
$ rails server # Runs the application locally
```

## Testing

To run all unit tests: 
```$ rspec```
