#!/bin/sh

rake tmp:cache:clean
rake assets:clean
rake assets:precompile RAILS_ENV=production
git add .
git commit -am "Precompiled Assets"
git push heroku master
