class AddColumnsToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :title, :string
    add_column :movies, :overview, :text
    add_column :movies, :poster_url, :text
  end
end
