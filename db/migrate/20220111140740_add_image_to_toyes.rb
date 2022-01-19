class AddImageToToyes < ActiveRecord::Migration[6.1]
  def change
    add_column :toyes, :image, :string
  end
end
