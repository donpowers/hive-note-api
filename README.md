Links to your client-side application, deployed client app, and deployed api.
An ERD
A list of your API routes
Installation instructions for any dependencies
Explanations of the technologies used
A couple paragraphs about the general approach you took
Descriptions of any unsolved problems or major hurdles you had to overcome
Both client and api repositories must be pinned on your GitHub page


##API Description

This API will provide the ability to perform CRUD on a 'hive note' table either
using CURL scripts or an API initiated from a Front End framework such as AJAX.

##Data Model(ERD)
http://i.imgur.com/FqC1QVk.png

##API Project approach

1. Determine what DB tables are required and relationships
2. Build out rails scaffold for new tables to support features.
3. Implement routes and controllers along with curl scripts for support features.
4. Add 'current_user' support.
5. Build custom route(return on those hives for the user logged in)
6. Deploy repo to production site.

I followed my project approach as listed above.  It worked well. I had
only a few challenges: current user support and heroku deploy. Working
through those issues were accomplished relatively quickly(< 3hours).

I did add a custom route to retrieve the current users hives.
