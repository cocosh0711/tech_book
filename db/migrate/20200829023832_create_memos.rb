class CreateMemos < ActiveRecord::Migration[6.0]
  def change
    create_table :memos do |t|
      t.bigint :book_id
      t.text :content
      t.integer :page

      t.timestamps
    end
  end
end
