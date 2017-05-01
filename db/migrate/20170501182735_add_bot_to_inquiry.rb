class AddBotToInquiry < ActiveRecord::Migration
  def change
    add_column :inquiries, :bot, :boolean
  end
end
