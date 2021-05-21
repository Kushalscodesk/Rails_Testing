Sentry.init do |config|
  config.dsn = 'https://00295f9269d64c65920a3df9ce75a6b4@o695164.ingest.sentry.io/5775480'
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]

  # Set tracesSampleRate to 1.0 to capture 100%
  # of transactions for performance monitoring.
  # We recommend adjusting this value in production
  config.traces_sample_rate = 0.5
  # or
  config.traces_sampler = lambda do |context|
    true
  end
end