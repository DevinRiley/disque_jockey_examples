require 'disque_jockey'
class SecondExampleWorker < DisqueJockey::Worker
  subscribe_to 'example_queue_2'
  threads 5
  def handle(job)
    logger.info "Second worker takes longer."
    logger.info "starting... #{job}"
    sleep(5)
    logger.info "Second worker finishing..."
  end
end
