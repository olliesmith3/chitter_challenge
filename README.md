Chitter Challenge
=================

### Reasoning
-------
After finishing the course at Makers, I wanted to do a quick refresher of making a simple Sinatra app. The aim was to improve on my previous attempt in regards to code quality and a few addition features e.g. verfication. 

### What it does
-------
A simple app that allows users to sign in and post messages to a forum.

### How to run it
-------
```
$ git clone https://github.com/olliesmith3/chitter_challenge.git
$ bundle install
```
Follow the database setup in the section below
```
$ rackup
```
Go to localhost:9292 in your browser.

### How to run the tests
-------
```
$ rspec
```
### How To Set Up Databases:
-------
```
$ psql postgres
```
```
postgres=# CREATE DATABASE chitter WITH OWNER <user> ENCODING 'UTF8';
postgres=# \q
```
```
$ psql chitter
```
```
chitter=# CREATE DATABASE chitter_test WITH OWNER <user> ENCODING 'UTF8';
chitter=# CREATE TABLE users (id SERIAL PRIMARY KEY, first_name VARCHAR(20), last_name VARCHAR(20),email VARCHAR(60), password VARCHAR(60));
chitter=# CREATE TABLE peeps (id SERIAL PRIMARY KEY, content VARCHAR(240), author VARCHAR(60), timestamp VARCHAR(60));
\q
```
```
$ psql chitter_test
```
```
chitter_test=# CREATE TABLE users (id SERIAL PRIMARY KEY, first_name email VARCHAR(60), last_name VARCHAR(20), password VARCHAR(60));
chitter_test=# CREATE TABLE peeps (id SERIAL PRIMARY KEY, content VARCHAR(240), author VARCHAR(60), timestamp VARCHAR(60));
```

### Features/User stories:
-------

```
STRAIGHT UP

As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter

As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order

As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made

As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter

HARDER

As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter

As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

ADVANCED

As a Maker
So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep
```


  
