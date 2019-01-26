class ChangeColumnName < ActiveRecord::Migration[5.2]
  #change the name type for tipo
  def change
  	rename_column :movies, :type, :tipo
  end
end
