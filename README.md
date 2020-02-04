# README

## Getting Started

1. **Clone this repo**
  - git clone https://github.com/UIOWAjohnsonhj/selt2019_g011.git
2. **Install gems** 
  - bundle install --without production
3. **Apply migrations**
  - bundle exec rake db:migrate
  - bundle exec rake db:schema:load
4. **Seed database**
  - bundle exec rake db:seed

## Useful Commands
* **Start local server**
  - bundle exec rails server
* **Run coverage tests**
  - **TODO**
  
## Working with Branches
1. **Ensure your local codebase is up to date with master**
  - git pull
2. **Create a new branch**
  - git branch myBranchName
3. **Checkout the newly created branch**
  - git checkout myBranchName
4. **After making changes within your branch**
  - git add .
  - git commit -m "Updates to my branch"
5. **Pushing your local branch to github**
  - git push origin myBranchName

## TODO

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
