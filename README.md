# rspec-flamingo

A custom RSpec formatter that just outputs 🦩 for everything. This is made from an inside joke and should not be used in any sane workplace.

### Install the gem

```
git clone https://github.com/radiantnode/rspec-flamingo.git
cd rspec-flamingo
gem build rspec-flamingo.gemspec
gem install gemname-version-0.0.0.gem
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
