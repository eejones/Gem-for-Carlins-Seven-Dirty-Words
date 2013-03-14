require "Censor_for_seven_words/version"
require "Censor_for_seven_words/words.rb"

module CensorForSevenWords
  

  @@censor_words = [
    { 'fuck' => 'f*ck',
      'shit' => 'sh*t',
      'piss' => 'P*ss',
      ' cunt' => 'c*nt',
      ' ass' => 'a**',
      'bitch' => 'b*tch',
      'tits'  => 't*ts'}

  ]

  def censor_words
    sentence=self.split('-')
    censor_words= @@censor_words.dup
    sentence=sentence.downcase
    censored_sentence = censor_words do |w|
      sentence.shift[w]
    end
    signif.join( ' ' )
  end

# def censorship(sentences)
 # while sentence.include? 'shit'
  #  open = sentence.index( 'shit' )
   # close = open+4
    #sentence[open..close] = 'f*ck'
#  end
#end



end
