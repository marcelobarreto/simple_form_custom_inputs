# SimpleFormCustomInputs

![](screenshot.png)

## Availables inputs

- [x] Switch/Toggle with Switchery
- [ ] Datepicker
- [ ] Datetimepicker

## Installation

Add the following gems to your application's Gemfile:

```ruby
gem 'simple_form'
gem 'simple_form_custom_inputs'

source 'https://rails-assets.org' do
  gem 'rails-assets-switchery'
end
```

And then execute:

```bash
$ bundle install
$ rails generate simple_form:install
```

## Usage

In app/assets/javascripts/application.js, you should add as follows:

```js
//= require ...
//= require switchery
//= require simple_form_custom_inputs
//= require ...
```

Application.scss

```scss
@import "switchery";
```

Basic Example:

```erb
<%= simple_form_for :example do |f| %>
  ...
  <%= f.input :boolean, as: :switch %>
  ...
<% end %>
```

Want some more customization?

```erb
<%= simple_form_for :example do |f| %>
  ...
  <%= f.input :boolean, as: :switch, input_html: {data: {color: '#FF0', secondary_color: '#0F0', jack_color: '#FFF', jack_secondary_color: '#000', size: 'small'}} %>
  ...
<% end %>
```

## Sample projects

For an example, take a look at the `example` folder in this repository.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
