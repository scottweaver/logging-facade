# Logging::Facade

I kept rewriting a simple, logging provider/facade so I just decided to make it its own, little project.

## Installation

Add this line to your application's Gemfile:

    gem 'logging-facade',  git: 'https://github.com/scottweaver/logging-facade.git'

And then execute:

    $ bundle


## Usage
By default , LoggingFacade will use the built-in Ruby Logger.  You can change this by overriding the default logger at runtime:

    # Example of using the Rails logger
    LoggingFacade::Logger.logger = Rails.logger

Then in your code:

    require 'logging-facade'

    class MyClass
        include LoggingFacade::Logger

        def something
            logger.info 'Some log message.'
        end
    end

That's it.  What logging-facade is doing really isn't all that complicated but it was something I found I was repeating over and over so I just pulled out into its own gem.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
