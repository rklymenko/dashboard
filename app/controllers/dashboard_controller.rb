class DashboardController < ApplicationController
  before_filter :authenticate_user!
  layout 'dashboard'

  def index
    @cases = Case.all
  end
end
