# frozen_string_literal: true

class AddColumnLessons < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :information, :string
    add_column :lessons, :information, :text
    add_column :lessons, :user_id, :integer
    add_column :lessons, :price, :string
    add_column :lessons, :schedule, :string
    remove_column :lessons, :category, :string
  end
end
