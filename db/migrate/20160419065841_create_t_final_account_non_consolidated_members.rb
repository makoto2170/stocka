class CreateTFinalAccountNonConsolidatedMembers < ActiveRecord::Migration
  def change
    create_table :t_final_account_non_consolidated_members do |t|
      t.integer :securities_code
      t.integer :current_fiscal_year, :null => false
      t.string :accounting_standards, :null => false
      t.integer :net_sales, :limit => 8
      t.integer :operating_income, :limit => 8
      t.integer :ordinary_income, :limit => 8
      t.integer :net_income, :limit => 8
      t.integer :earnings_per_share_summary, :limit => 8
      t.integer :diluted_earnings_per_share_summary, :limit => 8
      t.integer :net_assets_per_share_summary, :limit => 8
      t.integer :total_assets_summary, :limit => 8
      t.integer :capital_stock_summary, :limit => 8
      t.decimal :equity_to_asset_ratio_summary, :precision => 5, :scale => 4
      t.decimal :rate_of_return_on_assets_summary, :precision => 5, :scale => 4
      t.decimal :rate_of_return_on_equity_summary, :precision => 5, :scale => 4
      t.decimal :rate_of_ordinary_income_return_on_assets_summary, :precision => 5, :scale => 4
      t.integer :total_number_of_issued_shares_summary, :limit => 8

      t.timestamps null: false
    end
  end
end
