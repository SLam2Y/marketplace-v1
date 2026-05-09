# Stack Overflow

# Used tools

1. Language Ruby 3.3.7
2. Ruby on Rails  8.1.1
3. DB sqlite3  2.1
4. Server puma 5.0
5. Used authorisation gem 'devise'

# Installation

1. Clone the repository and cd into the directory.
2. Install dependencies: `bundle install`

```bash
git clone https://github.com/username/stack-overflow 
```

```bash
bundle install
```

Create and migrate databases (sqlite3 required!):
```
rails db:create
rails db:migrate
```

# Using the project

Run server
```bash
rails server
```

Go to page
http://localhost:3000/
open in browser this page, and authorise 
pages /admin,control user roles guest
/questions the authorised user crate question
only the author of question or admin(user with admin role) can edit or delete question 


