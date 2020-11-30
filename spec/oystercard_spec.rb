require './lib/oystercard'

describe Oystercard do
  subject(:oystercard) {Oystercard.new}
  
  it "Creates a new instance of oystercard" do
    expect(Oystercard.new).to be_an_instance_of(Oystercard)
  end

  it "returns 0 by default" do
    expect(subject.balance).to eq 0
  end

end