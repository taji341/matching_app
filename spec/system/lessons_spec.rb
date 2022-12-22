require 'rails_helper'

RSpec.describe "Lessons", type: :system do
  let!(:user) { create(:user) }
  let!(:user1) { create(:user1) }
  let!(:user2) { create(:user2) }
  let!(:user3) { create(:user3) }
  let!(:lesson) { create(:lesson, user: user) }
  let!(:lesson1) { create(:lesson, title: "検索機能を検証", user: user3) }
  describe "自分のレッスン表示ページ" do
    context "レッスンを作成している場合" do
      before do
        sign_in user
        visit users_path
      end
      it "自分のレッスンの情報が表示されている事" do
        expect(page).to have_content lesson.title
        expect(page).to have_selector("img[src$='test-lesson.jpg']")
        expect(page).to have_content lesson.information
        expect(page).to have_content lesson.address
        expect(page).to have_content lesson.price
        expect(page).to have_content lesson.schedule
      end
      it "ユーザーの情報が正しく表示されている事" do
        expect(page).to have_content user.name
        expect(page).to have_selector("img[src$='test-user.jpeg']")
        expect(page).to have_content user.address
        expect(page).to have_content user.introduction
      end
      it "レッスン編集リンクが表示され、正しく遷移する事" do
        click_on "レッスンを編集"
        expect(current_path).to eq edit_lesson_path(lesson.id)
      end
    end
    context "レッスンを作成していない場合" do
      before do
        sign_in user1
        visit users_path
      end
      it "レッスン作成リンクが表示され、正しく遷移する事" do
        click_on "レッスンを登録"
        expect(current_path).to eq new_lesson_path
      end
    end
    context "ユーザー情報を未登録の場合" do
      before do
        sign_in user2
        visit users_path
      end
      it "ユーザー編集リンクが表示され、正しく遷移する事" do
        click_on "ユーザー情報登録へ"
        expect(current_path).to eq edit_user_path(user2.id)
      end
    end
  end
  describe "レッスン編集ページ" do
    before do
      sign_in user
      visit edit_lesson_path(lesson.id)
    end
    it "正しくレッスンの編集がされる事" do
      fill_in 'レッスンタイトル', with: '編集しました'
      click_on "編集を完了する"
      expect(current_path).to eq users_path
      expect(page).to have_content 'レッスンを編集しました'
    end
    it "正しくレッスンの削除がされる事" do
      click_on "削除する"
      expect(current_path).to eq users_path
      expect(page).to have_content 'レッスンを削除しました'
    end
  end
  describe "レッスン検索一覧ページ" do
    before do
      visit root_path
      fill_in "レッスンを楽器名で検索！", with: '検索機能を検証'
      click_on "検索"
    end
    it "レッスン一覧ページへ正しく遷移する事" do
      expect(current_path).to eq lessons_path
    end
    it "検索したレッスンのみが表示される事" do
      expect(page).to have_content lesson1.title
      expect(page).to have_no_content lesson.title
    end
    it "レッスンの情報が表示されている事" do
      expect(page).to have_content lesson1.title
      expect(page).to have_selector("img[src$='test-lesson.jpg']")
      expect(page).to have_selector("img[src$='test-user.jpeg']")
      expect(page).to have_content user3.name
      expect(page).to have_content user3.address
    end
    it "検索件数が表示されている事" do
      expect(page).to have_content "検索結果:1件"
    end
  end
  describe "レッスン詳細ページ" do
    before do
      sign_in user1
      visit lesson_path(lesson.id)
    end
    it "レッスンの情報が表示されている事" do
      expect(page).to have_content lesson.title
      expect(page).to have_content lesson.information
      expect(page).to have_selector("img[src$='test-lesson.jpg']")
      expect(page).to have_content lesson.address
      expect(page).to have_content lesson.price
      expect(page).to have_content lesson.schedule
    end
    it "レッスンのユーザーの情報が表示されている事" do
      expect(page).to have_content user.name
      expect(page).to have_content user.introduction
    end
  end
  
end
