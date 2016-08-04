class AccountsController < ApplicationController
  before_action :set_final_accounts, only: [:index, :consolidate, :independent]
  before_action :is_consolidated_exist, only: [:index, :consolidate, :independent]
  def index
    @day_to_day2 = DayToDay2.find(params[:securities_code])
    if @is_consolidated_exist then
        @h2_label = "連結決算"
        @final_accounts = @final_account_consolidated_members
    else
        @h2_label = "単独決算"
        @final_accounts = @final_account_non_consolidated_members
    end
  end

  def consolidate
    @day_to_day2 = DayToDay2.find(params[:securities_code])
    @final_accounts = @final_account_consolidated_members
  end

  def independent
    @day_to_day2 = DayToDay2.find(params[:securities_code])
    @final_account_non_consolidated_members = @final_account_non_consolidated_members
  end

  private
    def set_final_accounts
      @final_account_consolidated_members = TFinalAccount.where(securities_code: params[:securities_code]).order(current_fiscal_year: :desc)
      @final_account_non_consolidated_members = TFinalAccountNonConsolidatedMember.where(securities_code: params[:securities_code]).order(current_fiscal_year: :desc)
    end
    def is_consolidated_exist
      if @final_account_consolidated_members.count > 0 then
        @is_consolidated_exist = true
      elsif @final_account_non_consolidated_members.count > 0 then
        @is_consolidated_exist = false
      end
    end
end

