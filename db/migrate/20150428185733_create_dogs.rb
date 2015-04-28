class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.string :texture
      t.string :gender

      t.timestamps null: false
    end
  end
end
