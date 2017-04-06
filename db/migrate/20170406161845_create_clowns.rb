class CreateClowns < ActiveRecord::Migration[5.0]
  def change
    create_table :clowns do |t|
      t.string :name
      t.text :costume
      t.text :tricks
      t.integer :age
      t.text :type

      t.timestamps
    end
  end
end
