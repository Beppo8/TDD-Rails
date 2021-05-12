class HomeController < ApplicationController
  def grettings
    render json: { grettings: I18n.t(:hello) }
  end
end
