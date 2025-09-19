

source "https://rubygems.org"

ruby "3.2.4"

# Core
gem "rails",   "~> 6.1.7"

# Server & DB
gem "puma",    "~> 5.6"
gem "mysql2",  "~> 0.5"

# Assets / JS / CSS
gem "sassc-rails", "~> 2.1"   # replaces sass-rails (EOL)
gem "terser",      "~> 1.1"   # replaces uglifier (uses ExecJS runtime)
gem "execjs"                     # let ExecJS pick Node if present

# Front-end libs (keep if used)
gem "jquery-rails"
gem "turbolinks", "~> 5"
gem "jbuilder",   "~> 2.11"
gem "bootstrap",  "~> 4.1.3"
gem "coffee-rails", "~> 4.2"    # only if you still have .coffee files

# Auth
gem "devise", "~> 4.9"
# If you use token auth:
gem "devise_token_auth", "~> 1.2"
# If you use OmniAuth providers:
gem "omniauth", "~> 2.1"
gem "omniauth-rails_csrf_protection", "~> 1.0"

# Responders (only if you actually use respond_with / responders)
gem "responders", "~> 3.1"

# Windows tzdata (safe to leave)
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# Capistrano (optional; keep if you use)
gem "capistrano-rails", group: :development
gem "capistrano-ext"

group :development, :test do
  gem "byebug", "~> 11.1"
end

group :development do
  gem "web-console", "~> 4.2"
  gem "listen", "~> 3.9"
  gem "ffi", ">= 1.15.5"             # avoids old ffi build errors on macOS
  # If you rely on Spring, keep these modern versions; otherwise remove both:
  # gem "spring", "~> 4.4"
  # gem "spring-watcher-listen", "~> 2.1"
  gem "yaml_db"
end
