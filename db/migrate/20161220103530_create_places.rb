class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name, null: false
      t.string :description
      t.references :group, foreign_key: true

      t.timestamps
    end

    add_index :places, [:group_id, :name], unique: true
  end
end
