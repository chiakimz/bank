require 'account'
describe Account do
  it 'has date, credit, debit, balance by default' do
    account = Account.new
    expect(account.default).to eq 'date || credit || debit || balance'
  end
end
