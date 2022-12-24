# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let!(:user) { create(:user) }
  describe 'ページの表示' do
    it '新規登録ページが正常に表示される事' do
      get new_user_registration_path
      expect(response).to have_http_status(:success)
    end
    it 'ログインページが正常に表示される事' do
      get new_user_session_path
      expect(response).to have_http_status(:success)
    end
    it 'マイページが正常に表示される事' do
      sign_in user
      get users_path
      expect(response).to have_http_status(:success)
    end
    it 'ユーザー情報編集ページが正常に表示される事' do
      sign_in user
      get edit_user_path(user)
      expect(response).to have_http_status(:success)
    end
  end
end
