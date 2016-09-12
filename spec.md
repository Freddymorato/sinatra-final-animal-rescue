# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database
- [x] Include more than one model class (list of model class names e.g. User, Post, Category)
-     Shelter, Animal, User
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Posts)
-     Shelter has_many animals. User has_many shelters, and has_many animals through shelters
- [x] Include user accounts
- [x] Ensure that users can't modify content created by other users
-     User id must match the user_id associated with the content they wish to edit
- [x] Include user input validations
-     If any of the input fields are blank the form won't go through and will redirect
- [x] Display validation failures to user with error message (example form URL e.g. /posts/new)
-     Used rack-flash3 to set up flash messages
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message