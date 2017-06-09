
Repo:https://github.com/donpowers/hive-note-api
Repo: https://github.com/donpowers/hive-note-client

# Hive Notes Client https://donpowers.github.io/hive-note-client/

##API Description

This API will provide the ability to perform CRUD on a 'hive note' table either
using CURL scripts or an API initiated from a Front End framework such as AJAX.

##Technologies Leveraged
Ruby on Rails, or simply Rails, server-side web application framework.
Rails is a model–view–controller (MVC) framework,
providing default structures for a database, a web service, and web pages

##Data Model(ERD)
http://i.imgur.com/FqC1QVk.png

##API Routes
URI Pattern                    Controller#Action
GET   /notes(.:format)               notes#index
POST   /notes(.:format)               notes#create
GET    /notes/:id(.:format)           notes#show
PATCH  /notes/:id(.:format)           notes#update
PUT    /notes/:id(.:format)           notes#update
DELETE /notes/:id(.:format)           notes#destroy
GET    /my-notes(.:format)            notes#my_notes
POST   /sign-up(.:format)             users#signup
POST   /sign-in(.:format)             users#signin
DELETE /sign-out/:id(.:format)        users#signout
PATCH  /change-password/:id(.:format) users#changepw
GET    /users(.:format)               users#index
GET    /users/:id(.:format)           users#show

##API Project approach

1. Determine what DB tables are required and relationships
2. Build out rails scaffold for new tables to support features.
3. Implement routes and controllers along with curl scripts for support features.
4. Add 'current_user' support.
5. Build custom route(return on get those notes for the user logged in)
6. Deploy repo to production site.

I followed my project approach as listed above.  It worked well. I had
only a few challenges: remembering Rails and current user. Working
through those issues were accomplished relatively quickly(< 3hours).

I did add a custom route to retrieve the current users notes. I also used
the Rails to sort the returned data.
