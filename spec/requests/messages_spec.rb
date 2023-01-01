# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Messages', type: :request do
  let!(:user) { create(:user) }
  let!(:room) { create(:room) }

  describe 'ページの表示' do
    it 'トークルームページが正常に表示される事' do
      sign_in user
      get room_messages_path(room.id)
      expect(response).to have_http_status(:success)
    end
  end
end
