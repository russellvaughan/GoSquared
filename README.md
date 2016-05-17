## GoSquared Task

## Description

A simple blogging Web Application including a user login process with GoSquared implemented.
GoSquared's Basic Tracking has been integrated as well as Vistors Tracking. A simple 'like' feature for a blog post has been created as way to make use of GoSquared Event Tracking.


## Approach to Testing & Development:

- Test Driven Development was used to build application.
- Factory Girl used to substitute fixture.
- Single Responsibilty Principle adhered to wherever possible.
- Deployed to Heroku

## Screenshots

![Image of Login Page]
(http://imgur.com/2RiWWvL)

![Image of Blogs Page]
(http://imgur.com/h1ClR0z)

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