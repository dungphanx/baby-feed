class CreateUserBabies < ActiveRecord::Migration[6.1]
  def change
    create_table :user_babies do |t|
      t.references :user
      t.references :baby

      t.timestamps
    end
  end
end
