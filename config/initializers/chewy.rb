Chewy.settings = {host: 'localhost:9200', prefix: 'stock_system'}
Chewy.root_strategy = :sidekiq
Chewy::Railtie.console do
  Chewy.strategy.pop if Chewy.strategy.current.name == :urgent
end