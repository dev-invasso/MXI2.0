class CreateUserLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :user_logs do |t|
      t.string :exception_class, null: false, limit: 255
      t.string :controller_name, null: false, limit: 255
      t.string :action_name, null: false, limit: 255
      t.text :message, null: false
      t.text :backtrace, null: false
      t.text :environment, null: false
      t.text :request, null: false
      t.references :user, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
