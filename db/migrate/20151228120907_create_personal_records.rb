class CreatePersonalRecords < ActiveRecord::Migration
  def change
    create_table :personal_records do |t|
      t.string :exercise
      t.decimal :weight, :precision => 5, :scale => 2
      t.date :date

      t.timestamps
    end
  end
end
