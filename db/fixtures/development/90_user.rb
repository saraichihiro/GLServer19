# -*- coding: utf-8 -*-

10.times do |n| 
  User.seed_once(:email) do |s|
    s.name = Faker::Name.name
    s.email = "example-#{n+1}@railstutorial.org"
    s.password = "password"
    s.password_confirmation = "password"
  end
end
