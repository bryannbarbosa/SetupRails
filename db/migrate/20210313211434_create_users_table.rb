class CreateUsersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :cpf, null: false, index: { unique: true }
      t.string :email, index: { unique: true }
      t.timestamps
    end
  end
end
