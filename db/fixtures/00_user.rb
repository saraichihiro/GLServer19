# -*- coding: utf-8 -*-

User.seed_once(:email) do |s|
    s.name = "Admin"
    s.email = "example@railstutorial.org"
    s.password = "foobar"
    s.password_confirmation = "foobar"
    s.admin = true
end