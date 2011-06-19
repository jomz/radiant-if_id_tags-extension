module NavigationHelpers
  
  # Extend the standard PathMatchers with your own paths
  # to be used in your features.
  # 
  # The keys and values here may be used in your standard web steps
  # Using:
  #
  #   When I go to the "if_id_tags" admin page
  # 
  # would direct the request to the path you provide in the value:
  # 
  #   admin_if_id_tags_path
  # 
  PathMatchers = {} unless defined?(PathMatchers)
  PathMatchers.merge!({
    # /if_id_tags/i => 'admin_if_id_tags_path'
  })
  
end

World(NavigationHelpers)