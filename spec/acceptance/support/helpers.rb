module HelperMethods

 def current_path
    URI.parse(current_url).path
  end

  def click(locator)
    click_link_or_button(locator)
  end

end

RSpec.configuration.include HelperMethods, :type => :acceptance
