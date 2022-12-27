require 'rails_helper'

RSpec.describe "Users", type: :system do
  let!(:user) { create(:user) }
  let!(:user1) { create(:user1) }

  describe "ユーザー情報編集ページ" do
    before do
      sign_in user
      visit edit_user_path(user.id)
    end

    it "正しく編集がされる事" do
      fill_in '名前', with: '編集しました'
      click_on "登録する"
      expect(current_path).to eq users_path
      expect(page).to have_content 'ユーザーの設定を編集しました'
    end
    it "ページ上部にユーザーの情報が表示される事" do
      expect(page).to have_content user.name
      expect(page).to have_selector("img[src$='test-user.jpeg']")
    end
    it "ユーザーの性別に応じたアイコンが表示される事" do
      expect(page).to have_css(".fa-mars")
      sign_in user1
      visit edit_user_path(user1.id)
      expect(page).to have_css(".fa-venus")
    end
  end
end
