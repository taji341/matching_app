require 'rails_helper'

RSpec.describe "Favorites", type: :system do
  let!(:user) { create(:user) }
  let!(:user1) { create(:user1) }
  let!(:lesson) { create(:lesson, user: user1) }
  let!(:favorite) { create(:favorite, user: user, lesson: lesson) }

  before do
    sign_in user  
  end
  describe "お気に入り登録機能" do
    it "お気に入り登録したレッスンが一覧で表示される事" do
      visit favorites_users_path
      expect(page).to have_content lesson.title
    end
  end
end
