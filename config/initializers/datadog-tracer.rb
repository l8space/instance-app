Datadog.configure do |c|
      c.use :rails, service_name: 'layer8-mastodon'
      c.use :sidekiq, service_name: 'layer8-mastodon-sidekiq'
      c.use :active_record, service_name: 'layer8-mastodon-active-record'
end

