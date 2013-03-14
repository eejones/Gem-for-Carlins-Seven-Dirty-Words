module Censor_for_seven_words
  class Words
       @@censor_words = [
    { 'fuck' => 'f*ck',
      'shit' => 'sh*t',
      'piss' => 'P*ss',
      ' cunt' => 'c*nt',
      ' ass' => 'a**',
      'bitch' => 'b*tch',
      'tits'  => 't*ts'}

  ]

  def self.portray(words)
    sentence=words.split('-')
    censor_words= @@censor_words.dup
    sentence=sentence.downcase
    censored_sentence = censor_words do |w|
      sentence.shift[w]
    end
    sentence.join( ' ' )
  end

end
