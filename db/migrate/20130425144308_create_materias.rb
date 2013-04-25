class CreateMaterias < ActiveRecord::Migration
  def change
    create_table :materias do |t|
      t.string :nombre
      t.integer :curso_id

      t.timestamps
    end
  end
end
