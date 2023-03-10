class CreateUserRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_roles do |t|
      t.string :modul_name
      t.boolean :create
      t.boolean :read
      t.boolean :update
      t.boolean :delete
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
