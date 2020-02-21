require "pb"

describe PiggyBank do
  it "can receive 3 coins" do
    piggy_bank = PiggyBank.new
    expect{piggy_bank.put_coins(3)}.not_to raise_error
  end

  describe "#shake"

    it "doesn't clink if empty" do
      piggy_bank = PiggyBank.new
      expect(piggy_bank.shake).not_to eq "clink!"
    end

    it "clinks if it has coins in" do
      piggy_bank = PiggyBank.new
      subject.put_coins(1)
      expect(subject.shake).to eq "clink!"
    end

  describe "#break"

    it "can be broken" do
      piggy_bank = PiggyBank.new
      expect{subject.break}.not_to raise_error
    end

    it "returns the number of coins inside" do
      piggy_bank = PiggyBank.new
      subject.put_coins(2)
      subject.put_coins(3)
      expect(subject.break).to eq 5
    end


end
