class CreateReadingLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :reading_logs do |t|
      t.bigint :book_id
      t.integer :first_page
      t.integer :last_page
      t.integer :duration

      t.timestamps
    end
  end
end
