# 2013-01-01:
# adjust necessary gem(-version)s and run
# bundle install --without production
#
# then startup mysql
#   mysql: create database urm, create user, grant rights,...
#   rake db:setup
#   rake db:seed 
#
# then startup local rails server
#   view in browser localhost:3000


# DETAILS:
##########
# for bundle instruction read also:
# http://gembundler.com/rationale.html
# and maybe:
# http://yehudakatz.com/2011/05/30/gem-versioning-and-bundler-doing-it-right/
#
# current bundle config can be found in
#    .bundle/conifg
#    which contains e.g.
#        ...
#        BUNDLE_PATH: vendor/bundle
#        ....
# Note also: later we execute everything with bundle exec: e.g. bundle exec rake -T

# jf: see also: http://gembundler.com/gemfile.html
source 'http://rubygems.org'

# Note for provider domainfactory:
# support max rails version 3.2.5
# support max ruby version 1.8.7

gem 'rails', '3.2.5'
gem 'railties'
gem 'jquery-rails'
# for file attachments:
# paperclip max version is 2.7.x for ruby 1.8.7
# (newer/current paperclip versions require ruby 1.9.x)
gem 'paperclip', "~> 2.7"
# for ajax-file-upload:
# see: http://www.alfajango.com/blog/remotipart-rails-gem/
gem "remotipart", "~> 1.0"
# 2012-03-22 for authentication add Authlogic
gem 'authlogic'
# 2012-03-22 for registration / confirmation via eMail
gem 'aasm'

group :test do
  gem 'sqlite3'
end
group :development do # local machine OS X Mountain Lion (mysql2! not mysql)
  # local machine needs mysql2 (mysql does NOT work!)
  # Note: e.g. gem install mysql2 -v '0.3.11' does NOT work on production machine df
	#gem 'mysql2' 
  gem 'mysql', "2.8.1"
end
group :production do # on production-server hosted by domain factory
  gem 'mysql', "2.8.1"
end





# SOME EXPERIMENTS and EXPERIENCES:
# for Rails 3.1 "assets"
# gem 'coffee-rails', ">= 3.1.0"
# gem 'uglifier'
# jf: error: "...in <class:Railtie>': undefined method `debug_rjs=' 
#     for ActionView::Base:Class (NoMethodError)...."
# occures with gem 'sass-rails', 	">= 3.1.0" activated ??!!
# gem 'sass-rails', "~> 3.1.0" # "~> 3.2.0"
# gem 'railties'	, "~> 3.1.0" # "~> 3.2.0.beta"

# 2012-01-29 for Javascript Execution via Ruby
#gem 'execjs' # we know this works locally AND on df-server !
#  SORRY NO => ERROR on df-server: 
#   Could not find a JavaScript runtime. See https://github.com/sstephenson/execjs 
#    for a list of available runtimes. (ExecJS::RuntimeUnavailable)
#   try also on server in shell: bundle exec rake -T (to reproduce the error)
#  2013-01-01: needed for therubyracer-installation
#  (UNFORTUNATELY therubyrace nor libv8 do NOT work on the df-server)
#  gem 'libv8', '~> 3.11.8' # try again with gem install libv8 --version 3.11.8.0 on production df-server
#  gem 'libv8', '3.11.8.0' # ok v. 3.11.8.0 works on df-server now!
#gem 'therubyracer', '0.9.9', :require => 'v8' # default: 0.11.0 does NOT compile on df server

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19', :require => 'ruby-debug'


# TODO # TODO # TODO # TODO # TODO 

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat' # ...expressive and robust acceptance tests for a Ruby web application...
# end



