class BankAccount
@@accounts = []
@@interest_rate = 0.05

def self.create (id, balance)
  @@accounts << BankAccount.new(id, balance)

end

def self.total_funds
    @@accounts.map(&:balance).inject(0, &:+)
end

def self.interest_time
  @@accounts.each do |interest|
  @balance = (@balance * @@interest_rate) + @balance

end
end

attr_accessor :id, :balance, :interest_rate, :current_currency

def initialize ( id, balance, current_currency = "CAD" )
  @id = id
    @balance = balance
    @current_currency = current_currency

  end

  def deposit(amount)

    return @balance + amount

  end
  def withdraw(amount)
    return @balance - amount
  end

end
