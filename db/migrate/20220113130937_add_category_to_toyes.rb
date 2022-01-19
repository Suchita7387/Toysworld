class AddCategoryToToyes < ActiveRecord::Migration[6.1]
  def change
    add_column :toyes, :category, :string
  end
end
