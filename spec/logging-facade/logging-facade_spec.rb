require File.dirname(__FILE__) + "/../spec_helper.rb"
require 'logging-facade'
require "logger"

class SomeLogger
    attr_reader :message
    def info(message)
        @message=message
    end
end

describe LoggingFacade::Logger do

    it "should provide the default  Ruby Logger if no other logger is provided" do
        LoggingFacade::Logger.logger.should eq LoggingFacade::DEFAULT_LOGGER
    end

    it "should allow for setting a logger" do
        LoggingFacade::Logger.logger = SomeLogger.new
        LoggingFacade::Logger.logger.instance_of?(SomeLogger). should be true
    end

    it "should support being included in other classes/modules for logging" do
        LoggingFacade::Logger.logger = SomeLogger.new

        class TestClass
            include LoggingFacade::Logger
            def something
                logger.info('Something got logged.')
            end
        end

        TestClass.new.something

        LoggingFacade::Logger.logger.message.should eq 'Something got logged.'
    end

end