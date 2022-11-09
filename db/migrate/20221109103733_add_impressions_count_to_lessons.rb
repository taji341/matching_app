class AddImpressionsCountToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :impressions_count, :integer
  end
end
