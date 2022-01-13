require 'rails_helper'

RSpec.describe 'posts', type: :request do
  describe 'GET index' do
    before(:example) { get user_posts_path(1) }

    it 'check response status' do
      expect(response).to have_http_status(:ok)
    end
  end

end
