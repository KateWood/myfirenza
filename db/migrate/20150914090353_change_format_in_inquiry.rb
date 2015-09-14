class ChangeFormatInInquiry < ActiveRecord::Migration
  def change
  	change_column :inquiries, :networth, :string
  	change_column :inquiries, :liquidity, :string
  end
end
