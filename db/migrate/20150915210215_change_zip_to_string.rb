class ChangeZipToString < ActiveRecord::Migration
  def change
  	change_column :inquiries, :zip, :string
  end
end
