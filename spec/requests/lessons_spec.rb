# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Lessons', type: :request do
  let!(:user) { create(:user) }
  let!(:lesson) { create(:lesson, user: user) }

  before do
    sign_in user
  end

  describe 'ページの表示' do
    it 'レッスン新規登録ページが正常に表示される事' do
      get new_lesson_path
      expect(response).to have_http_status(:success)
    end
    it 'レッスン一覧ページが正常に表示される事' do
      get lessons_path
      expect(response).to have_http_status(:success)
    end
    it 'レッスン詳細ページが正常に表示される事' do
      get lesson_path(lesson.id)
      expect(response).to have_http_status(:success)
    end
    it 'レッスン編集ページが正常に表示される事' do
      get edit_lesson_path(lesson.id)
      expect(response).to have_http_status(:success)
    end
  end
end
