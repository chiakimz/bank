class Transaction
  attr_reader :balance, :history

  def initialize
    @balance = []
    @history = []
  end

  def add_deposit(n)
    @balance.push(n)
    record = Account.new.date + '||' + n.to_s + '||' + ' ||' + @balance.inject(0, :+).to_s
    @history.push(record)
    record
  end

  def withdraw(n)
    @balance.push(-n)
    record = Account.new.date + '||' + ' ||' + n.to_s + '||' + @balance.inject(0, :+).to_s
    @history.push(record)
    record
  end
end
