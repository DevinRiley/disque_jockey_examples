require 'disque_jockey'

client = Disque.new(["127.0.0.1:7711"])
client.push('slow_queue', 'slow job', 1000)
10.times { client.push('example_queue',  'example job', 1000) }
10.times { client.push('example_queue_2', 'another example job', 1000) }