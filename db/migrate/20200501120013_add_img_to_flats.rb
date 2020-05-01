class AddImgToFlats < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :flat_picture, :string
  end
end
