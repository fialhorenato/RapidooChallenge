class CreateProposta < ActiveRecord::Migration[5.1]
  def change
    create_table :proposta do |t|
      t.string :nome
      t.string :nomedaempresa
      t.string :email
      t.decimal :faturamento
      t.decimal :valordotitulo
      t.integer :prazo
      t.decimal :taxa
      t.decimal :valorareceber
      t.timestamps
    end
  end
end
