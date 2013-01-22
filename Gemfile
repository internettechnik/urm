# for bundle instruction read also:
# http://gembundler.com/rationale.html

# URL for Rubygems server
# (see also: http://gembundler.com/gemfile.html)
source :rubygems # = source 'http://rubygems.org' = source :rubyforge


gem "rake", "10.0.3"

# Note for provider domainfactory:
# support max rails version 3.2.5
# support max ruby version 1.8.7
gem 'rails', '3.2.5' # exact this version is supported on df


gem 'railties'
gem 'jquery-rails'

# for file attachments:
# paperclip max version is 2.7.x for ruby 1.8.7
# (newer/current paperclip versions require ruby 1.9.x)
gem 'paperclip', "~> 2.7"

# for ajax-file-upload:
# see: http://www.alfajango.com/blog/remotipart-rails-gem/
gem "remotipart", "~> 1.0"

# for authentication add Authlogic
gem 'authlogic'

# act as statemachine for registration / confirmation via eMail
gem 'aasm'

# print pdfs generated out of HTML (using tool "wkhtmltopdf")
gem 'pdfkit'
# Note for config:
# in config/environments/development.rb
# => ...
# => config.middleware.use "PDFKit::Middleware", :print_media_type => true
# => PDFKit.configure do |config|
# =>   config.wkhtmltopdf ="/usr/local/opt/wkhtmltopdf/bin/wkhtmltopdf"
# => end
# => ...

#gem 'wkhtmltopdf'
#gem 'wkhtmltopdf-binary' # for mac (& linux?)

# special needs for test, development and production environments
group :test do
  gem 'sqlite3'
end
group :development, :production do 
  gem 'mysql', "2.8.1"
end
