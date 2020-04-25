# LanguageColors

This gem was created as a fast way to get the colors that Github uses to describe languages. returns a string in the form of `'#00ff00'`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'language_colors'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install language_colors

## Usage

```ruby
lc = LanguageColors::LanguageColors.new
lc.color('cpp')
=> "#f34b7d"
```

## Development

Hmm indeed.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/SyedAbuTalib/language_colors. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/SyedAbuTalib/language_colors/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the LanguageColors project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/language_colors/blob/master/CODE_OF_CONDUCT.md).
