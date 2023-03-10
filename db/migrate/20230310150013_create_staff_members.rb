class CreateStaffMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :staff_members do |t|
      t.string :hire_type, null: false
      t.boolean :per_hour, null: false, default: false
      t.decimal :pay_rate, precision: 8, scale: 2, null: false
      t.string :referred_by, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :phone, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip, null: false
      t.string :address, null: false
      t.decimal :longitude, precision: 10, scale: 6, null: false
      t.decimal :latitude, precision: 10, scale: 6, null: false
      t.boolean :hazwoper, null: false, default: false
      t.boolean :bachelor_degree, null: false, default: false
      t.boolean :yearly_training, null: false, default: false
      t.date :training_date
      t.string :received_by, null: false, default: 'sms'
      t.boolean :is_new, null: false, default: false
      t.boolean :is_paper_work_in, null: false, default: false
      t.boolean :is_active, null: false, default: true
      t.string :shirt_size, null: false
      t.datetime :start_date, null: false
      t.string :hashtags, array: true, null: false, default: []
      t.text :notes, null: false
      t.boolean :status
      t.references :staff_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
