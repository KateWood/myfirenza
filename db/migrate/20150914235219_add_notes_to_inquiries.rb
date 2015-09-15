class AddNotesToInquiries < ActiveRecord::Migration
  def change
    add_column :inquiries, :notes, :string
  end
end
