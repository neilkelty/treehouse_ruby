require 'minitest/autorun'
require 'minitest/spec'

$:.unshift File.expand_path(File.dirname(__FILE__) + '/..')

require 'lib/bank_account'

describe BankAccount do
	subject { BankAccount.new("Jason") }

	it "should be a bank account instance" do
		subject.must_be_instance_of BankAccount
	end

	it "should have a name" do
		subject.must_respond_to 'name'
	end

	it "should initialie with a name" do
		bank_account = BankAccount.new('Jason')
		bank_account.name.must_equal 'Jason'
	end

	it "should have transactions" do
		subject.must_respond_to 'transactions'
	end

	it "should have an empty array of transactions" do
		subject.transactions.must_be_instance_of Array
		subject.transactions.must_equal []
	end

	describe "#deposit" do
		before do
			@bank_account = BankAccount.new("Jason")
		end

		it "responds to the deposit method" do
			@bank_account.must_respond_to 'deposit'
		end

		it "returns the amount of the depsoit" do
			@bank_account.deposit(100).must_equal 100
		end

		it "adds the amount to the transactions" do
			@bank_account.deposit(100)
			@bank_account.transactions.must_include 100
		end
	end
end