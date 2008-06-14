spec = Gem::Specification.new do |s|
  s.name        = 'advanced_errors'
  s.version     = '1.0.0'
  s.author      = 'Mark Catley'
  s.email       = 'mark@nexx.co.nz'
  s.homepage    = 'http://github.com/markcatley/advanced_errors'
  s.summary     = "[Rails] Extentions to ActiveRecord's error handling features which I find useful." 
  s.description = "Disabling the rendering of the attribute name for errors by the error_messages_for helper.\n" +
                  'Simply place a caret as the first character in the message.'
  
  s.files       = %w(README, MIT-LICENSE, Rakefile, install.rb, init.rb, uninstall.rb, lib/advanced_errors.rb, test/full_message_test.rb)
  
  s.add_dependency 'activerecord'
end

