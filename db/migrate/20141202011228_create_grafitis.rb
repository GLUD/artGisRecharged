class CreateGrafitis < ActiveRecord::Migration
  def change
    create_table :grafitis do |t|
      t.string :title
      t.string :latitud
      t.string :longitud
      t.integer :estrato
      t.integer :seguridad
      t.integer :educacion
      t.text :ruta

      t.timestamps
    end
  end
end
