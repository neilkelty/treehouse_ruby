require 'benchmark'

repetitions = 1000000

# Benchmark.bm(7)	do |x|
# 	x.report 'String' do
# 		repetitions.times do
# 			options = { 'hello' => 'world' }
# 		end
# 	end

# 	x.report 'Symbol' do
# 		repetitions.times do
# 			options = { hello: :world }
# 		end
# 	end
# end

class BankAccount
	def initialize(name)
		@name = name
		@transactions = []
	end

	def deposit(amount)
		@transactions.push(amount)		
	end

	def withdraw(amount)
		@transactions.push(-amount)
	end
end

BankStruct = Struct.new('BankStruct', :name, :transactions)

Benchmark.bm(20) do |x|
	x.report "BankAccount Class" do
		repetitions.times do
			account = BankAccount.new('Jason Seifer')
			account.deposit(100)
			account.withdraw(50)
		end
	end

	x.report "BankStruct Struct" do
		repetitions.times do
			account = BankStruct.new('Jason Seifer', [])
			account.name = 'Jason Seifer'
			account.transactions.push(100)
			account.transactions.push(-50)
		end
	end
end