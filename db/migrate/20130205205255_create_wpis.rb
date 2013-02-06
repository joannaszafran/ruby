class CreateWpis < ActiveRecord::Migration
  def change
    create_table :wpis do |t|
      t.string :tytul
      t.text :tresc

      t.timestamps
    end
  end
end
