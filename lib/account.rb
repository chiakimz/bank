class Account
  attr_reader :default
  def initialize
    @default = 'date || credit || debit || balance'
  end

  def date
    Time.now.strftime("%m/%d/%Y")
  end

  def balance
    history = []
    history.inject(0, :+)
  end  
end
