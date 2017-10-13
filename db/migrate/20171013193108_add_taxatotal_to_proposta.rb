class AddTaxatotalToProposta < ActiveRecord::Migration[5.1]
  def change
    add_column :proposta, :taxatotal, :decimal
  end
end
