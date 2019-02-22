class AddWeatherToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :weather, :string
  end
end
