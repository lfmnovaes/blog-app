require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) { @user = User.new(name: 'John', posts_counter: 1) }
  describe 'check if name' do
    it 'is valid' do
      expect(@user).to be_valid
    end
    it 'nil is not valid' do
      @user.name = nil
      expect(@user).to_not be_valid
    end
  end

  describe 'check if posts_counter' do
    it 'is valid' do
      expect(@user).to be_valid
    end
    it 'negative is invalid' do
      @user.posts_counter = -3
      expect(@user).to_not be_valid
    end
  end

  describe 'check if recent posts' do
    before(:each) {
      (1..4).each do |n|
        @user.posts.new(title: "t#{n}", comments_counter: 0, likes_counter: 0)
      end
      @user.save
    }
    it 'has length of 3' do
      expect(@user.recent_posts.length).to eq(3)
    end
  end
end
