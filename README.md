
# Piggy Bank
A virtual Piggy Bank to save coins
## Getting started
`git clone git@github.com:Benjamaker/Piggy-Bank.git`

## User stories
```
As a user,
So that I can save money
I can put coins in my piggy bank

As a user,
So that I know whether there are coins in my piggy bank
I can shake it, and it will “cling” if there is money in it

As a user,
So I can enjoy my hard earned savings
I can break my piggy bank and get back the number or coins that I had put in
```

## Running tests
`rspec`

## Feature tests

First feature test:
Putting coins should not throw any errors
```
irb
  > require './pb.rb'  
  > piggy_bank = PiggyBank.new
  > piggy_bank(put_coins(3))
```

Second feature test:
Piggy Bank should "clink!" if there are coins inside
```
irb
  > require './pb.rb'
  > piggy_bank = PiggyBank.new
  > piggy_bank.shake
```  
Third feature test:
Piggy Bank should add coins cumulatively and return the number of coins inside when broken
```
irb
  > require './pb.rb'
  > piggy_bank = PiggyBank.new
  > piggy_bank.put_coins(2)
  > piggy_bank.put_coins(3)
  > piggy_bank.break
=> 5
```  
