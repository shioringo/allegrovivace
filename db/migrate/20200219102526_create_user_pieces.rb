class CreateUserPieces < ActiveRecord::Migration[6.0]
  def change
    create_table :user_pieces do |t|
      t.belongs_to :user
      t.belongs_to :piece
      t.timestamps
    end
  end
end
