require 'rails_helper'

RSpec.describe "Messages", type: :system do
  let!(:user) { create(:user) }
  let!(:user1) { create(:user1) }
  let!(:room) { create(:room) }
  let!(:room_user) { create(:room_user, user: user, room: room) }
  let!(:room_user1) { create(:room_user, user: user1, room: room) }
  let!(:message) { create(:message, user: user, room: room) }
  let!(:message1) { create(:message, user: user1, room: room) }

  before do
    sign_in user
  end

  describe "トークルーム一覧ページ" do
    before do
      visit rooms_path
    end

    it "メッセージルームの一覧が表示されている事" do
      expect(page).to have_content user1.name
      expect(page).to have_content message1.content
    end
    it "未読メッセージにアイコンが表示されている事" do
      expect(page).to have_css '.fa-envelope-circle-check'
    end
    it "既読によりアイコンが消える事" do
      click_on "ユーザー画像"
      click_on "Mail Box"
      expect(page).to have_no_css '.fa-envelope-circle-check'
    end
    it "メッセージ一覧ページへ正しく遷移する事" do
      click_on "ユーザー画像"
      expect(current_path).to eq room_messages_path(room.id)
    end
  end

  describe "メッセージ一覧ページ" do
    before do
      visit room_messages_path(room.id)
    end

    it "メッセージが正しく表示されている事" do
      expect(page).to have_content message.content
      expect(page).to have_content message1.content
    end
    it "相手方の情報が表示されている事" do
      expect(page).to have_selector("img[src$='test-user.jpeg']")
    end
    it "メッセージが正しく送信される事" do
      fill_in "message[content]", with: 'メッセージを送信'
      click_on "メッセージ送信"
      expect(page).to have_content "送信しました！"
      expect(page).to have_content "メッセージを送信"
    end
  end
end
