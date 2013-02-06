class CreateKomentarzs < ActiveRecord::Migration
  def change
    create_table :komentarzs do |t|
      t.string :id
      t.text :tresc

      t.timestamps
    end
  end
end
