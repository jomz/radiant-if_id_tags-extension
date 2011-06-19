module IfIdTags
  include Radiant::Taggable
  class TagError < StandardError; end
  
  desc %{
    Expands if the current page's ID equals any of the ids passed to the "in" attribute.
  }
  tag "if_id" do |tag|
    ids = tag.attr['in'].split(",")
    raise TagError, "r:if_id requires an 'in' attribute containing one or more comma seperated page ids." if ids.empty?
    tag.expand if ids.include? tag.locals.page.id.to_s
  end
  
  desc %{
    Expands unless the current page's ID equals any of the ids passed to the "in" attribute.
  }
  tag "unless_id" do |tag|
    ids = tag.attr['in'].split(",")
    raise TagError, "r:unless_id requires an 'in' attribute containing one or more comma seperated page ids." if ids.empty?
    tag.expand unless ids.include? tag.locals.page.id.to_s
  end
end