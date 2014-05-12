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

## Running the test suite

I don't use rake to run Ruby tests. (Sorry Jim)

Rake in my experience slows down your tests. Not as much as external dependencies to Rails, but still, slow. I have also dropped a log statement in my boot.rb file in a rails app and watched Rake load my env several times before the tests run.

To solve this, I simply use Ruby these days. You will find the test suite 'runner' in the root, and you can run it like so:

```
./run_test_suite
```

That is all :)

## Supported Rubies

I have long disowned 1.8 and 1.9. Run this in 2.0+


## Code Health

[![Code Climate](https://codeclimate.com/github/thatrubylove/fantasyhub.png)](https://codeclimate.com/github/thatrubylove/fantasyhub) [![Build Status](https://travis-ci.org/thatrubylove/fantasyhub.svg?branch=master)](https://travis-ci.org/thatrubylove/fantasyhub)
