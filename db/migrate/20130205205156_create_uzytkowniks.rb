class CreateUzytkowniks < ActiveRecord::Migration
  def change
    create_table :uzytkowniks do |t|
      t.string :login
      t.string :haslo

      t.timestamps
    end
  end
end
