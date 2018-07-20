#!/bin/bash
cd /home/rails/rails_project
git pull
bundle install
service unicorn restart
