# rspec-flamingo

<img width="498" height="278" alt="f088d092c3765d2dd641acaceffe0969" src="https://github.com/user-attachments/assets/26b7cb27-03b2-454e-a2a7-d9eb08da744b" />

A custom RSpec formatter that just outputs 🦩 for everything. This is made from an inside joke and should not be used in any sane workplace.

### Install the gem

```
git clone https://github.com/radiantnode/rspec-flamingo.git
cd rspec-flamingo
gem build rspec-flamingo.gemspec
gem install rspec-flamingo-*.gem
```

### Enabling the flamingo 🦩

You can invoke the flamingo with the `--format` option when calling rspec:

```
rspec --require rspec-flamingo --format RSpecFlamingo::Formatter
```

Or if you are brave enable it in your `.rspec` file:

```
--require rspec-flamingo
--format RSpecFlamingo::Formatter
```

Now you have the flamingo! 🦩 🎉

```
rspec
🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩🦩
```

### Configuration

You can customize the emoji and summary output by defining a configuration block in your `spec_helper.rb`.

```ruby
RSpecFlamingo.configure do |config|
  config.example_passed_emoji = '🎉'
  config.example_failed_emoji = '🐊'
  config.example_pending_emoji = '👷'
  config.hide_summary = true   # Hide default RSpec progress formatter summary
  config.hide_failures = true  # Hide default RSpec progress formatter failures
end
```
