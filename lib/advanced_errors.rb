require 'advanced_errors/full_messages'

if defined?(Rails) and defined?(ActiveRecord)
  ActiveRecord::Errors.send :include, Nexx::AdvancedErrors::FullMessages
end