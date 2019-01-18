class CreatePartners < ActiveRecord::Migration[5.2]
  def change
    create_table :partners do |t|
      t.string :company_name
      t.string :status
      t.boolean :grand_groupe, :default => false
      t.timestamps
    end
  end
end
