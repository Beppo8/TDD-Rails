class ApplicationController < ActionController::API
    before_action :swich_locale
    def swich_locale
        I18n.locale = params[:locale] || I18n.default_locale
    end
end
