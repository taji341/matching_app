# frozen_string_literal: true

class AddColumnUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :image, :string
    add_column :users, :address, :string
    add_column :users, :introduction, :text
    add_column :users, :gender, :integer
  end
end
