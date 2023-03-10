class CreateHashtags < ActiveRecord::Migration[7.0]
  def change
    create_table :hashtags do |t|
      t.string :name, null: false, max_length: 50

      t.timestamps
    end
  end
end
