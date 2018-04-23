require 'transaction'

describe 'Transaction' do
  transaction = Transaction.new

  describe 'add_deposit' do
    it 'lets you add a deppsit' do
      expect(transaction.add_deposit(1000)).to include('1000')
    end
  end

  describe 'withdraw' do
    it 'lets you withdraw money' do
      expect(transaction.withdraw(400)).to include('600')
    end
  end
end
