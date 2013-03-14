require "Censor_for_seven_words"
require "lib/Censor_for_seven_words.rb"

describe Censor_for_seven_words::Words do
  it |f| do
    Censor_for_seven_words::Words.portray("Fuck you").should eql("f*ck you")
  end

  it "that shit is stupid" do
    Censor_for_seven_words::Words.portray("That shit").should eql("that sh*t")
  end
end
