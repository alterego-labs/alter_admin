# AlterAdmin

Simple admin panel generator with inherited resources, has_scope, datatables for Rails 4

## Installation

Add this line to your application's Gemfile:

    gem 'alter_admin'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install alter_admin

Or if you want to stay on the edge:

    gem 'alter_admin', github: 'sergio1990/alter_admin'

## Usage

After installing gem you must to do some steps. _Lets go!_

### Basic configuration

At this step we creating layout, adding home controller, route to it, settings class and simple form settings.
Run following command:

    $ rails g alter_admin:install

### Generate admin resource section

This generator creates resource controller, all views, adds route and model admin settings class.
Run following command:

    $ rails g alter_admin:resource <model_name>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
