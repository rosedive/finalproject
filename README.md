# README

README
This README would normally document whatever steps are necessary to get the application up and running.

Things you may want to cover:

version
Ruby version '2.6.3'

Rails version '6.0.1'

System dependencies

Configuration

Database creation

Database initialization

How to run the test suite

Services (job queues, cache servers, search engines, etc.)

Deployment instructions

Application structure

Poject Name Book Library App

Overview

A Book Library App is a project that manages and stores books information electronically according to students needs. The system helps both students and library manager to keep a constant track of all the books available in the library. It allows both the admin and the student to search for the desired book.

concept A Book Library App is a software built to handle the primary housekeeping functions of a library. Libraries rely on library management systems to manage asset collections as well as relationships with their members.

Function List

user creation, update, show or view, approve and delete functions

user login function

login using username and password

Logout function

signin function using username, user_type and password

books create, display, edit and delete functions

request function using send or create order_book, approve and rejected

User registration Name, email, User_type and password are required

Admin Function

Validation function

Profile editing function

Profile image can be set as an icon

I will make CRUD by generating scaffold of controller, model and view

Table definition

https://docs.google.com/document/d/1unj16Xpn9-HHIpwiYY3FKQpzFZmQlYjV-6KJ4tR_rHo/edit?usp=sharing

Catalog diagram
https://docs.google.com/document/d/1NlP4L3UueRAj_MzHROwoEmQDF3RZ0TzV7Z43xbUBxx8/edit?usp=sharing

Entity Relationship Diagram Definition
https://docs.google.com/document/d/1dt4M8JXqMCGxM08Bo7mbF3gbHY9v1fxQp-_OzKI_Nqw/edit?usp=sharing

Screen transition diagram
https://docs.google.com/document/d/1w7HjF85dYgtGbnktRvmVbUCTNag1d5yWuluSIx5UE5A/edit?usp=sharing

Screen wire frame
https://docs.google.com/document/d/132lvagQPu0dnC5kTd3JchKoXHPioz6zSTx76mEzlQXs/edit?usp=sharing

table definition
https://docs.google.com/document/d/15VSOcQLsepznu_r-kNxihJyncJvWL3_wIc0prWA045c/edit?usp=sharing

Scheduled use Gems
Backend:
. bcrypt . jbuilder

Frontend:
. coderay . jquery-rails . redcarpet . sass-rails

Authentication
. devise

other gems
. capistrano . unicorn . carrierwave . mini_magick . fog-aws . search_cop, gem 'kaminari'
gem 'launchy'

