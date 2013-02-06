class CreateWydarzenies < ActiveRecord::Migration
  def change
    create_table :wydarzenies do |t|
      t.string :nazwa
      t.text :opis

      t.timestamps
    end
  end
end
