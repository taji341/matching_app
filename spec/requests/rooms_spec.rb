# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Rooms', type: :request do
  let!(:user) { create(:user) }

  describe 'ページの表示' do
    it 'トークルーム一覧ページが正常に表示される事' do
      sign_in user
      get rooms_path
      expect(response).to have_http_status(:success)
    end
  end
end
