# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Favorites', type: :request do
  let!(:user) { create(:user) }

  before do
    sign_in user
  end

  describe 'ページの表示' do
    it 'お気に入り一覧ページが正常に表示される事' do
      get favorites_users_path
      expect(response).to have_http_status(:success)
    end
  end
end
