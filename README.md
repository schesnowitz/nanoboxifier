# nanoboxifier

Welcome to Nanoboxification!

## Installation

Once you have your Rails app created you will need to add a file to the root of the application.  Create a file called boxfile.yml

For now let's fill it in with some stuff to get us rolling.

```yml
run.config:
  engine: ruby
  engine.config:
    runtime: ruby-2.4
  extra_packages:
    - nodejs
    - nginx
    - pkgconf
    - libxml2
    - libxslt
```
You can view the file by clicking 
<a href='https://gist.github.com/schesnowitz/36501da9df92b115517c49fd22f5e8f1'>Here</a>

Add this line to your application's Gemfile:

```ruby
gem 'nanoboxifier'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nanoboxifier

## Usage

This gem/package sets a rails application to become compatible with Nanobox. 

There are a few things to configure inside a rails app when working with Nanobox and this gem is designed to make the set up easy breezy!
 

After running bundle install.

To get a list of tasks you can run ```ruby 
rake -T | grep boxify ```

To set up your application to use postgresql:

```ruby
rake boxify_pg
```

To set up your application to use postgresql with sidekiq:

```ruby
rake boxify_pg_sidekiq
```
 

To set up your application to use mysql:

```ruby
rake boxify_mysql
```

To set up your application to use mysql with sidekiq:

```ruby
rake boxify_mysql_sidekiq
```


Note:  when using sidekiq, make sure to include the gem in your gemfile.
When inside your nanobox terminal you can run ```ruby bundle add sidekiq ```
Also make sure to update your config/application.rb

```ruby
# config/application.rb
class Application < Rails::Application

…

    config.active_job.queue_adapter = :sidekiq

…

  end

```

 

 

If you only want to run sidekiq in production

```ruby
# config/application.rb
class Application < Rails::Application

…

    config.active_job.queue_adapter = Rails.env.production? ? :sidekiq : :async

…

  end

```

 

If you are not using mailers in your local development environment you can run sidekiq by opening a separate terminal and simply enter:

```ruby

nanobox run sidekiq

```

If using mailers with sidekiq run:

```ruby

bundle exec sidekiq -q default -q mailers -C /app/config/sidekiq.rb

```



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/schesnowitz/nanoboxifier. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the nanoboxifier project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/schesnowitz/nanoboxifier/blob/master/CODE_OF_CONDUCT.md).