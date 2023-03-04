
# 4.Once upon a time, there was a programmer named Alice who was working on a new project in Ruby. She wanted to create a class to represent a bank account, with methods to deposit and withdraw money. She also wanted to initialize each account with a starting balance.

class Bank

    def initialize( balance = 0, deposit = 0)
        @balance = balance
        @deposit = deposit
    end


    def deposit(amount)
        if amount > 0 
            @balance += amount
            puts "Your account deposited with $#{amount} ,your account balance is #{@balance}."
        end
    end


    def withdrawal(amount)
        if amount > 0
            @balance -= amount
            puts " withdrew $#{amount} from your account. your account has amount #{@balance}."
        end
    end

end
b=Bank.new()
b.deposit(10000)
b.withdrawal(500)
