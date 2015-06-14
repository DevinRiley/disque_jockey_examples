require 'disque_jockey'
class ExampleWorker < DisqueJockey::Worker
  subscribe_to 'example_queue'
  def handle(job)
    logger.info("First Worker runs immediately: #{job}")
  end
end
