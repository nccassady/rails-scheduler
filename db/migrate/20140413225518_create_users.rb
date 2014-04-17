class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :salt
      t.references :events, index: true

      t.timestamps
    end
  end
end
