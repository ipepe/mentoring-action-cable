class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :from, null: false
      t.string :body, null: false
      t.references :chat_room, foreign_key: true

      t.timestamps
    end
  end
end
