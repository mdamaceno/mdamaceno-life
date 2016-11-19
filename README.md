# Mdamaceno::Life

This gem is a Marco Damaceno's short resumé. In this version, you can see:

- Fullname
- A short cool name
- Age
- Occupation
- Scholarity
- Events

## Documentation

To generate documentation, execute:

```bash
$ yard doc
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mdamaceno-life'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mdamaceno-life

## Usage

```ruby
Mdamaceno::Life::Show.new.fullname # => "MARCO ANTONIO ANIBAL DAMACENO"
Mdamaceno::Life::Show.new.coolname # => "Marco Damaceno"
Mdamaceno::Life::Show.new.birthdate # => "17/10/1988"
Mdamaceno::Life::Show.new.age # => "28"
Mdamaceno::Life::Show.new.occupation # => "Desenvolvedor web"
Mdamaceno::Life::Show.new.scholarity # => "Ensino Superior Completo"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/mdamaceno-life. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
