class CreateReferralBonus < ActiveRecord::Migration[7.0]
  def change
    create_table :referral_bonus do |t|
      t.decimal :bonus_amount, precision: 10, scale: 2, null: false
      t.boolean :paid, null: false, default: false
      t.references :referred_staff_member, null: false, foreign_key: { to_table: :staff_members }
      t.references :referrer_staff_member, foreign_key: { to_table: :staff_members }


      t.timestamps
    end
  end
end
