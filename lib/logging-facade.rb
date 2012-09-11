require "logging-facade/version"
require "logger"

module LoggingFacade
    DEFAULT_LOGGER = Logger.new(STDOUT)

    module Logger
        require 'logger'
        def self.logger=(logger)
            const_set(:LOGGER, logger)
        end

        def self.logger
            const_set(:LOGGER, DEFAULT_LOGGER) unless const_defined?(:LOGGER)
            LOGGER
        end

        def logger
            Logger.logger
        end
    end
end
