require "./lib/pb.rb"

piggy_bank = PiggyBank.new

p piggy_bank.shake

piggy_bank.put_coins(1)

p piggy_bank.shake
