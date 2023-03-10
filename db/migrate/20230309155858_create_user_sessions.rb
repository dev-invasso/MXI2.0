class CreateUserSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :user_sessions do |t|
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string :current_sign_in_ip, limit: 255
      t.string :last_sign_in_ip, limit: 255
      t.integer :consumed_timestep, null: false, default: 0
      t.integer :failed_attempts
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
