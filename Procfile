resque: env INTERVAL=0.1 QUEUE=normal bundle exec rails resque:work
resque: env INTERVAL=0.1 QUEUE=normal bundle exec rails resque:work
resque: env INTERVAL=0.1 QUEUE=normal bundle exec rails resque:work
redis: redis-server ./redis.development.conf
setup: echo "50000.times { TheWorker.perform_async }" | bundle exec rails c; sleep 999999
