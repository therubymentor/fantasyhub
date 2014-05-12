# Fantasyhub

This is the business logic behind th web app for PeepCode's PBP Challenge issued to @wycats and @tenderlove, This is my isolated, test driven, functional version.

## Installation

Add this line to your application's Gemfile:

    gem 'fantasyhub'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fantasyhub

## Usage

```ruby
scored_events = Fantasyhub.score_activity_feed(uid)
# => [Event, Event, ...]

scored_events.map{|event| event.score}.reduce(:+)
```

## Code Health

[![Code Climate](https://codeclimate.com/github/thatrubylove/fantasyhub.png)](https://codeclimate.com/github/thatrubylove/fantasyhub) [![Build Status](https://travis-ci.org/thatrubylove/fantasyhub.svg?branch=master)](https://travis-ci.org/thatrubylove/fantasyhub)
