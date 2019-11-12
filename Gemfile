source 'https://rubygems.org'
git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# git をインストールする
# https://git-scm.com/download/win

# node.js をインストールする
# https://nodejs.org/en/download/

#gem 'rails',		'4.2.7'
#gem 'uglifier',		'2.5.3'
#gem 'coffee-rails',	'~> 4.1.0'
#gem 'jquery-rails',	'4.0.3'
#gem 'turbolinks',	'2.3.0'
#gem 'jbuilder',		'2.2.3'

gem 'rails', '~> 5.1.6'
gem 'record_tag_helper', '~> 1.0'

# boostrap4 を利用する
gem 'bootstrap', '~> 4.3.1'
gem 'jquery-rails'

# https://github.com/bootstrap-ruby/bootstrap_form
gem "bootstrap_form", "~> 4.0"

# 古いバージョンのbootstrap_form。現在、メンテナンスされていない。
#gem "bootstrap_form",
#    git: "https://github.com/bootstrap-ruby/rails-bootstrap-forms.git",
#    branch: "master"

# アセットパイプライン機能
gem 'sprockets-rails', :require => 'sprockets/railtie'
#gem 'uglifier',     '3.2.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '4.2.2'

# turbolinks 機能
#gem 'turbolinks',   '5.0.1'
gem 'turbolinks',   '~> 5.2'
gem 'jbuilder',     '2.7.0'

# Web アイコンフォントの使用
# https://github.com/bokmann/font-awesome-rails
# font-awesomeの最新版に対応していないため、使用しない
#gem "font-awesome-rails"

# https://github.com/FortAwesome/font-awesome-sass
gem 'font-awesome-sass'

#gem 'feathericon-sass'
#gem 'feathericon-sass'

gem 'bcrypt', git: 'https://github.com/codahale/bcrypt-ruby.git', :require => 'bcrypt'

#gem 'will_paginate',		'3.0.7'
gem 'bootstrap-will_paginate',	'0.0.10'

gem 'sdoc',		'0.4.0', group: :doc
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'coffee-script-source','1.8.0'
#gem 'thor','0.19.1'
#gem 'autoprefixer-rails'
#gem 'bootswatch-rails'

gem 'seed-fu', '~> 2.3'

# エラーなどを日本語で表示する
gem 'rails-i18n', '~> 5.1'

group :development, :test do
  gem 'pry-rails'
  gem 'sqlite3',	'1.3.13'
  gem 'byebug',		'3.4.0'
  #gem 'spring',		'1.1.3'
  gem 'ruby-debug-ide'
  gem 'debase'
  
  # vscodeでの整形用のgem。エラーとなるためコメント化
  #gem 'prettier', '~> 0.15.1'
  #gem 'rufo'
end

group :development, :test do
  gem 'web-console', '3.1.1'
  #gem 'bootstrap-generators', '~> 3.3.4'
  gem 'faker',			'1.4.2'
end

group :test do
  gem 'simplecov', :require => false
  gem 'minitest-reporters', '1.0.5'
  #gem 'mini_backtrace',	    '0.1.3'
  #gem 'mini_backtrace'
  gem 'guard-minitest',	    '2.3.1'
end

group :production do
  gem 'pg',		'0.17.1'
  gem 'rails_12factor', '0.0.2'
  #gem 'puma',		'2.11.1'
end
