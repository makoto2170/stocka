module AccountsHelper
  def number_to_currency_with_truncate_under_million(number)
    truncated_num = (number / 1000000).round
    number_to_currency(truncated_num, unit: '百万円', precision: 0, format: '%n%u')
  end
end

