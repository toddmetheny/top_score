# TopScore

This is a simple gamification gem. It has a long way to go. It assumes that you already have a Users model in your app.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'top_score'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install top_score

## Usage

This gem assumes the pre-existence of a Users model. For simplicity, we're just going to add a score column to Users.

rails g migration AddScoreToUser score:integer

After you run the migration, but before you migrate, open it up and add 

    :default => 0

Then,

    rake db:migrate

Giving Users Points

Now you'll have access to the included methods to update the score. For instance, if you wanted to give users 10 points for adding comments, you'd just want to open up the Comment model and in the create action we'd call 

```ruby
TopScore.update_score(current_user, 10)
```

Taking Points Away

To take 10 points away, we'd just choose the corresponding action and call the penalty method, like so:

```ruby
TopScore.penalty(current_user, 10)
```

Leaderboard

To order the users by score, you can call the leaderboard method.

```ruby
TopScore.leaderboard(User.all)
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/top_score/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
