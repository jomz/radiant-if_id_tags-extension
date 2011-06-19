require File.dirname(__FILE__) + '/../spec_helper'

describe "If Id Tags" do
  dataset :home_page, :pages
  
  it '<r:if_id in="1"> should expand on the page with id 1' do
    pages(:home).should render("<r:if_id in=\"#{pages(:home).id}\">foo</r:if_id>").as('foo')
  end
  it '<r:unless_id in="1"> should not expand on the page with id 1' do
    pages(:home).should render("<r:unless_id in=\"#{pages(:home).id}\">foo</r:unless_id>").as('')
  end

end