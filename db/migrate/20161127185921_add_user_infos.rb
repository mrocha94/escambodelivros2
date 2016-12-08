class AddUserInfos < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :nome
      t.string :cpf
      t.date :data_nascimento
      t.string :telefone
    end
    add_index :users, :cpf, unique: true
  end
end
