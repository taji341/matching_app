class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :image
      t.string :category
      t.string :information
      t.string :address

      t.timestamps
    end
  end
end
