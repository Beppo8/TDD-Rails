require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "GET /grettings" do
    it "returns http success" do
      get "/home/grettings"
      expect(response).to have_http_status(:success)
    end
  end

end
