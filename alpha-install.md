% bundle exec rails g scaffold alpha_framework_def dname:string ddescription:text

% bundle exec rails g scaffold alpha_alpha_def dseq:integer dname:string ddescription:text alpha_framework_def:references

% bundle exec rails g scaffold alpha_state_def dseq:integer dname:string ddescription:text alpha_alpha_def:references

% bundle exec rails g scaffold alpha_item_def dseq:integer ddescription:text alpha_state_def:references

% bundle exec rails db:drop:_unsafe

% bundle exec rails db:migrate

# config/routes.rb を修正する。

% bundle exec rails routes > routes.txt

# model を修正する。

% bundle exec rails g scaffold alpha_framework project:references alpha_framework_def:references 

% bundle exec rails g scaffold alpha_alpha alpha_framework:references alpha_alpha_def:references

% bundle exec rails g scaffold alpha_state completed:boolean completed_items:integer completed_at:datetime alpha_alpha:references alpha_state_def:references

% bundle exec rails g scaffold alpha_item completed:boolean completed_at:datetime alpha_state:references alpha_item_def:references

% bundle exec rails g scaffold alpha_evidence document:string scrum_member:references alpha_item:references

% bundle exec rails db:migrate

# config/routes.rb を修正する。

% bundle exec rails routes > routes.txt

# データベースへ初期データを投入する

% bundle exec rails db:drop:_unsafe

% bundle exec rails db:migrate RAILS_ENV=development

% bundle exec rails db:seed RAILS_ENV=development

% bundle exec rails s

# データベースを検索し、データが投入されているか確認する。

% bundle exec rails console

[1] pry(main)> User.all
[2] pry(main)> exit

% bundle exec rails s


