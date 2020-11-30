require './lib/oystercard'

describe Oystercard do
  subject(:oystercard) {Oystercard.new}

  it "Creates a new instance of oystercard" do
    expect(Oystercard.new).to be_an_instance_of(Oystercard)
  end

  it "returns 0 by default" do
    expect(subject.balance).to eq 0
  end

  describe "#top_up" do
    it "adds money to the oystercard" do
      expect(subject).to respond_to(:top_up).with(1).argument
    end
  end

end
