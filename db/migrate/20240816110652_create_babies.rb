class CreateBabies < ActiveRecord::Migration[6.1]
  def change
    create_table :babies do |t|
      t.string :name
      t.string :nickname
      t.integer :gender
      t.date :dob
      t.references :user

      t.timestamps
    end
  end
end
