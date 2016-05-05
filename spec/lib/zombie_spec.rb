require 'spec_helper'

class Zombie
  attr_accessor :name
  attr_accessor :rotting
  attr_accessor :brains
  def initialize
    @name = 'Ash'
    @brains = 0
    @rotting = true
  end

  def hungry?
    true
  end

end
describe "A Zombie" do
  # example
  it "is named Ash" 

end

describe Zombie do
  before(:each) do
    @zombie = Zombie.new
  end
  it "is named Ash" do
    #zombie.name.should == 'Ash' #warning
    expect(@zombie.name).to eq('Ash')
    #expect(@zombie.name).to be_nil
    expect(@zombie.name).not_to be_nil
    expect(@zombie.rotting).to be_truthy
    expect(@zombie.rotting).not_to be_falsey
    expect(@zombie).to be_hungry
    expect(@zombie.hungry?).to be_truthy
  end

  it "has no brains" do
    #@zombie.brains.should < 1
  end
end
