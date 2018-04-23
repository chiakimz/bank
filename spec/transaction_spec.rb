require 'transaction'

describe 'Transaction' do
  transaction = Transaction.new

  describe 'add_deposit' do
    it 'lets you add a deppsit' do
      expect(transaction.add_deposit(1000.00)).to eq('04/23/2018 || 1000.00 ||   || 1000.00')
    end
  end

  describe 'withdraw' do
    it 'lets you withdraw money' do
      expect(transaction.withdraw(400.00)).to eq('04/23/2018 ||   || 400.00 || 600.00')
    end
  end

  describe 'print' do
    it 'shows all transaction history' do
      expect(transaction.print).to eq( ["date || credit || debit || balance", "04/23/2018 ||   || 400.00 || 600.00", "04/23/2018 || 1000.00 ||   || 1000.00"])
    end
  end
end
