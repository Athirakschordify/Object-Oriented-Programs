#  6.  Problem:
# Suppose you are designing a class called "BankAccount" in Ruby that has the following attributes and behaviors:
# Attributes:
# • balance (float)
#  • account_number (string)
# Behaviors:
# • deposit(amount) - adds the amount to the balance
# • withdraw(amount) - subtracts the amount from the balance
# • display_balance - prints the current balance
# • account_info - prints the account number and current balance
# You want to make sure that the balance and account number are only accessible within the class, and that the deposit and withdraw methods can only be called by objects of the class.

class BankAccount

  def initialize(balance,acc_no)
    @balance=balance
    @acc_no = acc_no
  end

  def deposit(amount)
  	    account_info

    @balance=@balance+amount
    puts "deposited amount is #{amount}"
    display_balance

  end

  def withdraw(amount)
    @balance=@balance-amount
    puts "withdraw amount is #{amount}"
    display_balance
  end

  private
  def display_balance
    puts "Your Account Balance = #{@balance}"
  end

  private
  def account_info
    puts "Your Account Number is #{@acc_no}"
    puts "Current balance is #{@balance}"
  end
end

bank=BankAccount.new(60000.0,"SBI1234567889999")
bank.deposit(4000.0)
bank.withdraw(5000.0)