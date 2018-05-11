class CreateWinesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :category
      t.string :varietal
      t.float :price
      t.string :origin
      t.integer :release_year
      t.text :tasting_note
    end
  end
end
