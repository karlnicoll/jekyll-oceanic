# Oceanic - A Minimalist, Blue Theme For Jekyll

[![Gem Version](https://badge.fury.io/rb/jekyll-oceanic.svg)](https://badge.fury.io/rb/jekyll-oceanic)
[![Build Status](https://travis-ci.org/karlnicoll/jekyll-oceanic.svg?branch=master)](https://travis-ci.org/karlnicoll/jekyll-oceanic)

Oceanic is intended as a simple theme for Jekyll websites, with a main focus
on blogs.

## Features

* Bright and minimalist theme.
* Skinning options with custom SASS parameters to tweak colours, fonts and some
  sizes.
* Code syntax highlighting through Rouge support. Syntax highlighting can also
  be skinned with custom colours if preferred.
* Configuration is easy to customize to specify:

  * Specify avatar image
  * Social media links
  * Theme skin
  * Pagination options
  * Category/Tag options
  * and more...

## Screenshots

See [HERE](SCREENSHOTS.md)

## Usage

### Step 1: Installation

First, add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-oceanic"
```

Next, add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-oceanic
```

Finally, execute:

```shell
$ bundle config set path .bundle
$ bundle install
...
```

or install it system-wide with:

```shell
$ gem install jekyll-oceanic
...
```

### Step 2: Configuration

Once installed, the theme should run out of the box with no configuration
required. However, you will want to customize in order to set up your website
the way you want.

See [HERE](CONFIGURATION.md) for a rundown of the various configuration
options.

## Customization

The theme can be easily customized by creating *skins*. Skins are
[Sass](https://sass-lang.com/) files that define colors, fonts, and various
other style properties that can be adjusted.

See [HERE](SKINNING.md) for a brief introduction to skinning.

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/karlnicoll/jekyll-oceanic. This project is intended to be a
safe, welcoming space for collaboration, and contributors are expected to
adhere to the [Contributor Covenant](http://contributor-covenant.org) code of
conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run
`bundle exec jekyll serve` and open your browser at `http://localhost:4000`.
This starts a Jekyll server using your theme. Add pages, documents, data, etc.
like normal to test your theme's contents. As you make modifications to your
theme and to your content, your site will regenerate and you should see the
changes in the browser after a refresh, just like normal.

## License

The theme is available as open source under the terms of the
[MIT License](https://opensource.org/licenses/MIT).
