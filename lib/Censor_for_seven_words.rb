require "Censor_for_seven_words/version"
require "Censor_for_seven_words/words.rb"

module CensorForSevenWords
  
 def censorship(sentences)
  while sentence.include? 'shit'
    open = sentence.index( 'shit' )
    close = open+4
    sentence[open..close] = 'f*ck'
  end
end



end
