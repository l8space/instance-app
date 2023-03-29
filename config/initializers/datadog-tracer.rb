Datadog.configure do |c|
      c.service = 'layer8-mastodon'
      c.tracing.instrument :rails, service_name: 'layer8-mastodon-rails'
      c.tracing.instrument :sidekiq
      c.tracing.instrument :active_record, service_name: 'layer8-mastodon-active-record'
      c.tracing.instrument :redis, service_name: 'layer8-mastodon-redis'
      c.tracing.instrument :pg, service_name: 'layer8-mastodon-postgres'
      c.tracing.instrument :elasticsearch, service_name: 'layer8-mastodon-elasticsearch'
      c.tracing.instrument :httprb, service_name: 'layer8-mastodon-httprb'
end
