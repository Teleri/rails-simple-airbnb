class AddPicToFlats < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :picture_url, :string
  end
end
