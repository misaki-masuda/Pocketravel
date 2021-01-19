class AddSpotNameToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :spot_name, :string
  end
end
