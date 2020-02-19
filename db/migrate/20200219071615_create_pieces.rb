class CreatePieces < ActiveRecord::Migration[6.0]
  def change
    create_table :pieces do |t|
      t.string :name, null: false
      t.belongs_to :composer
      t.timestamps
    end
  end
end
