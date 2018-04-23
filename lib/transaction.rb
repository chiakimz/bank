class Transaction
  attr_reader :balance, :history

  def initialize
    @balance = []
    @history = []
  end

  def add_deposit(n)
    @balance.push(n)
    record = Account.new.date + ' || ' + "%.2f" % n + ' || ' + '  || ' + "%.2f" % @balance.inject(0, :+)
    @history.unshift(record)
    record
  end

  def withdraw(n)
    @balance.push(-n)
    record = Account.new.date + ' || ' + '  || ' + "%.2f" % n + ' || ' + "%.2f" % @balance.inject(0, :+)
    @history.unshift(record)
    record
  end

  def print
    @history.unshift(Account.new.default)
    for each_transaction in @history
      puts each_transaction
    end
  end
end
