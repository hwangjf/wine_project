class AddUserIdAndWineIdToReviews < ActiveRecord::Migration[5.1]
  def change
    change_table :reviews do |t|
      t.column :user_id, :integer
      t.column :wine_id, :integer
    end
  end
end
