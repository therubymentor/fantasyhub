# Brought to you from the people behind www.rubycasts.io

Check out these awesome [ruby and rails screencasts](https://www.rubycasts.io)! There is 1 15 minute cast released every week as well as either a 2 Minute Ruby or a 2 Minute Rails screencast!

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
score = Fantasyhub.event_scores_sum_for(uid)
```


## Running the test suite

```
./run_test_suite # fast tests
SLOW=1 ./run_test_suite # fast tests
```


## Supported Rubies

I have long disowned 1.8 and 1.9. Run this in 2.0+


## Code Health

[![Code Climate](https://codeclimate.com/github/thatrubylove/fantasyhub.png)](https://codeclimate.com/github/thatrubylove/fantasyhub) [![Build Status](https://travis-ci.org/thatrubylove/fantasyhub.svg?branch=master)](https://travis-ci.org/thatrubylove/fantasyhub)
