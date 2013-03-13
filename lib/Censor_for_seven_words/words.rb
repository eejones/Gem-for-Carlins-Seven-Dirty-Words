module Censor_for_seven_words
  class Words
    def self.portray(words)
      if words.downcase == "broccoli"
        "Gross!"
      else
        "Delicious!"
      end
    end
  end
end
