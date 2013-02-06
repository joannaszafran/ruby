class CreateKategoria < ActiveRecord::Migration
  def change
    create_table :kategoria do |t|
      t.string :nazwa

      t.timestamps
    end
  end
end
