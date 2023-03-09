class CreateReportAProblems < ActiveRecord::Migration[7.0]
  def change
    create_table :report_a_problems do |t|
      t.string :subject, null: false
      t.string :message, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
