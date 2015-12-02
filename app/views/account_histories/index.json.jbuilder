json.array!(@account_histories) do |account_history|
  json.extract! account_history, :id, :account_id, :amount
  json.url account_history_url(account_history, format: :json)
end
