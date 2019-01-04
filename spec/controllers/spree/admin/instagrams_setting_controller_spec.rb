require 'rails_helper'

RSpec.describe Spree::Admin::InstagramsSettingController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
