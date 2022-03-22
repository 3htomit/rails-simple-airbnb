class AddPicUrlToFlat < ActiveRecord::Migration[6.1]
  def change
    add_column :flats, :photo_url, :string
  end
end
