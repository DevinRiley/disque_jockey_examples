class SlowWorker < DisqueJockey::Worker
  timeout 0.1
  subscribe_to 'slow_queue'

  def handle(job)
    sleep(1)
  end
end