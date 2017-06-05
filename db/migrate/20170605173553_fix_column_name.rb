class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :notes, :note, :observe
  end
end
