require "resque-unique_at_runtime"

class TheWorker < ApplicationWorker
  Resque::UniqueAtRuntime.configuration.logger = Rails.logger
  Resque::UniqueAtRuntime.configuration.debug_mode = 1

  include Resque::Plugins::UniqueAtRuntime

  def perform
    Resque.logger.info("start")
    File.open("Gemfile", "r") do |file|
      Rails.logger.info "Checking if the file can be locked"

      if file.flock(File::LOCK_EX | File::LOCK_NB)
        sleep 0.1
        file.flock(File::LOCK_UN)
        Rails.logger.info "File has been unlocked"
        file.close
      else
        Rails.logger.error "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        Rails.logger.error "!!!!!!!!Failed to control concurrency!!!!!!!!!!!!!!!!!!!!!!!"
        Rails.logger.error "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
      end
    end

    raise
  end
end
