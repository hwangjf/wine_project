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


# name
# price in cents
# primary_category == wine
# secondary_category == "White Wine", "Red Wine"
# origin
# (description- award)
# tasting_note- recommdendation, expectation, description
# varietal: type of wine i.e. Chardonnay, pinot noir etc
  # Chardonnay, Riesling, Pinot Grigio, Sauvignon Blanc
  # Cabernet Sauvignon, Pinot Noir, Syrah, Zinfandel, Malbec, Merlot
# style: body & fruity/savory
# sugar_content: sweet, semi, dry, D and XD
