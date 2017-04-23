Chewy.request_strategy = :sidekiq
Chewy::Type.class_eval do
  include ActiveModel::Serializers::JSON
end