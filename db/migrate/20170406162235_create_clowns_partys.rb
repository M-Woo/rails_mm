class CreateClownsPartys < ActiveRecord::Migration[5.0]
  def change
    create_table :clowns_partys do |t|
      t.references :clown, foreign_key: true
      t.references :party, foreign_key: true

      t.timestamps
    end
  end
end
