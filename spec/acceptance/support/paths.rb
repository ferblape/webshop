module NavigationHelpers
  # Put helper methods related to the paths in your application here.

  def homepage
    "/"
  end

  def login_page
    "/login"
  end


end

RSpec.configuration.include NavigationHelpers, :type => :acceptance
