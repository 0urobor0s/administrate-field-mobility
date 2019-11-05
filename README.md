# Administrate::Field::Mobility 

[![Gem Version](https://badge.fury.io/rb/administrate-field-mobility.svg)](https://badge.fury.io/rb/administrate-field-mobility)

## Warning
This gem is under early development.

This Administrate plugin adds support for string fields that use the Mobility gem to hold
translated values. 

Requirements in Mobility
----------------------

Set `locale_accessors` to true in `config/initializers/mobility`

```ruby
  config.default_options[:locale_accessors] = true
```

Getting Started
----------------------

Add Administrate::Field::Mobility gems to your Gemfile:

```ruby
gem "administrate-field-mobility", "0.0.1"
```

Add the Administrate Mobility Field to your dashboard.

```ruby
  ATTRIBUTE_TYPES = {
    created_at: Field::DateTime,
    update_at: Field::DateTime,
    name: Field::Mobility::String,
    description: Field::Mobility::Text,
  }.freeze
```

Credits
----------------------

This gem is inspired by [administrate-field-globalize](https://github.com/arkirchner/administrate-field-globalize)
