require 'account'

describe Account do
  account = Account.new

  describe 'default' do
    it 'has date, credit, debit, balance by default' do
      expect(account.default).to eq 'date || credit || debit || balance'
    end
  end

  describe 'date' do
    it 'shows the date of transaction' do
      expect(account.date).to eq Time.now.strftime("%m/%d/%Y")
    end
  end

  describe 'balance' do
    it 'is a sum of an empty array' do
      expect(account.balance).to eq 0
    end
  end
end
