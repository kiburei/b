class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.string :service
      t.string :reference_number
      t.decimal :amount
      t.string :mpesa_number
      t.string :contact_number
      t.string :email
      t.string :payment_mode
      t.date :due_date
      t.string :status
      t.string :third_party_ref_no
      t.string :channel_response
      t.string :user_action
      t.string :channel_used
      t.text :message

      t.timestamps
    end
  end
end
