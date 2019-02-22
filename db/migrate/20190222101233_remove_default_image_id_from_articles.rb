class RemoveDefaultImageIdFromArticles < ActiveRecord::Migration[5.2]
  def change
    change_column_default :articles, :image_id, ""
  end
end
