# DisqueJockey example workers

This repo provides examples of using disque_jockey workers to process jobs from a queue

## Getting started

##### For this example project to run, you need a disque server running on localhost:7711
See https://github.com/antirez/disque for source and build instructions.


Once you have a disque server running locally, clone down this repo and cd into its directory

Then install disque_jockey and its dependencies

````
bundle install
````

Start the example workers by running disque_jockey from the command line (you must have already built and installed disque_jockey from your local disque_jockey repo).

````
disque_jockey
````

You should see DisqueJockey begin logging to STDOUT.

````
[2015-05-24T09:17:33] INFO  DisqueJockey: Starting worker group with PID 36175...
[2015-05-24T09:17:33] INFO  DisqueJockey: Starting worker group with PID 36176...
[2015-05-24T09:17:33] INFO  DisqueJockey: Launching 2 ExampleWorkers
[2015-05-24T09:17:33] INFO  DisqueJockey: Launching 2 ExampleWorkers
[2015-05-24T09:17:33] INFO  DisqueJockey: Launching 5 SecondExampleWorkers
[2015-05-24T09:17:33] INFO  DisqueJockey: Launching 5 SecondExampleWorkers
````

To publish new messages to the example workers and see them log the results 
````
ruby publish.rb
````

