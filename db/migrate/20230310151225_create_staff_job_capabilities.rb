class CreateStaffJobCapabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :staff_job_capabilities do |t|
      t.boolean :capable, null: false
      t.references :job_capability, null: false, foreign_key: true
      t.references :staff_member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
