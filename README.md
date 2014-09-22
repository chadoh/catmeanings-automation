Cat Meanings: Automation
========================

These are simple Ruby scripts that interact with the [Cat
Meanings](https://github.com/chadoh/catmeanings) website for the purpose of
teaching n00bs how to steal cookies (as part of a class about malicious
hacking).

For them to work, you will need to install the [Ruby Gem](https://en.wikipedia.org/wiki/RubyGems)
called [mechanize](http://rubygems.org/gems/mechanize). You probably already
have Ruby installed, so just run this:

``` ruby
gem install mechanize
```

To actually run these scripts, add your Cat Meanings username & password to
your ENV, and then use Ruby to run whichever file you want. Here's how to run
the first one:

``` bash
export CATMEANINGS_USERNAME=your@catmeanings.emailaddress
export CATMEANINGS_PASSWORD=aPasswordYouWouldNeverActuallyUse
ruby browsing_loop.rb
```

To stop a script once it's running, hit ctrl-C (`^C`).

You should read both of these scripts. They're super easy to understand.
