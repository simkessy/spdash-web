class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :message
      t.string :email
      t.string :organization
      t.string :phone

      t.timestamps null: false
    end
  end
end
