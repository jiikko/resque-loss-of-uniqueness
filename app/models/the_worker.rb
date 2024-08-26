require "resque-unique_at_runtime"

class TheWorker < ApplicationWorker
  Resque::UniqueAtRuntime.configuration.logger = Rails.logger
  Resque::UniqueAtRuntime.configuration.debug_mode = 1

  include Resque::Plugins::UniqueAtRuntime

  def perform
    File.open("Gemfile", "r") do |file|
      Rails.logger.info "ファイルをロックできるか確認します"

      if file.flock(File::LOCK_EX | File::LOCK_NB)
        sleep 0.1
        file.flock(File::LOCK_UN)
        Rails.logger.info "ファイルをアンロックしました"
        file.close
      else
        Rails.logger.info "同時実行の制御に失敗しています!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!11"
      end
    end

    raise "意味はないけどエラーにさせる"
  end
end
