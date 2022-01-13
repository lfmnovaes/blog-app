require 'rails_helper'

RSpec.describe 'users', type: :request do
  describe 'GET index' do
    before(:example) { get users_path }

    it 'check response status' do
      expect(response).to have_http_status(:ok)
    end
  end

end
