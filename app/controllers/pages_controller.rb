class PagesController < ApplicationController
  # ----- add these lines here: -----
  
  # Restrict access so only logged in users can access the secret page:
  # before_action :authorize, only: [:home]
  
  # ----- end of added lines -----
  layout(false)
  def home
    # @num = "test"
    @slides = Slider.all
    @projects = TblPostProject.all
  end
end