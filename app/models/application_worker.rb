class ApplicationWorker
  def self.queue
    :normal
  end

  def self.perform_async(*args)
    Resque.enqueue(self, *args)
  end
end
