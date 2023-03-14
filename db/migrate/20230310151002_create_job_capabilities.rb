class CreateJobCapabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :job_capabilities do |t|
      t.string :capability, null: false

      t.timestamps
    end
  end
end
