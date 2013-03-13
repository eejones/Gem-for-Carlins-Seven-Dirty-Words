require "Censor_for_seven_words"
require "lib/Censor_for_seven_words.rb"

describe Censor_for_seven_words::Words do
  it "broccoli is gross" do
    Censor_for_seven_words::Words.portray("Broccoli").should eql("Gross!")
  end

  it "anything else is delicious" do
    Censor_for_seven_words::Words.portray("Not Broccoli").should eql("Delicious!")
  end
end
