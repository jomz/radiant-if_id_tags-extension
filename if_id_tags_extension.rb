# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'
require 'radiant-if_id_tags-extension/version'
class IfIdTagsExtension < Radiant::Extension
  version RadiantIfIdTagsExtension::VERSION
  description "Adds if_id_tags to Radiant."
  url "http://github.com/jomz/radiant-if_id_tags-extension"
  
  # extension_config do |config|
  #   config.gem 'some-awesome-gem'
  #   config.after_initialize do
  #     run_something
  #   end
  # end

  def activate
    Page.send :include, IfIdTags
  end
end
