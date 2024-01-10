class AddSlugToHangouts < ActiveRecord::Migration[7.1]
  def change
    add_column :hangouts, :slug, :string
    add_index :hangouts, :slug, unique: true
  end
end
