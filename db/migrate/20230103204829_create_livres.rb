class CreateLivres < ActiveRecord::Migration[7.0]
  def change
    create_table :livres do |t|
      t.string :titre
      t.string :auteur
      t.integer :note
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
