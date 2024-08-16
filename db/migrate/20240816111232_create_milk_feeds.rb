class CreateMilkFeeds < ActiveRecord::Migration[6.1]
  def change
    create_table :milk_feeds do |t|
      t.integer :quantity
      t.integer :unit
      t.text :note
      t.references :baby
      t.references :handle_by_user, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
