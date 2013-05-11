# Censor_for_seven_words/lib/censor_for_seven_words/core_ext.rb

String.class_eval do
  @@censored_words = { 
      'fuck' => 'f*ck',
      'shit' => 'sh*t',
      'piss' => 'p*ss',
      'cunt' => 'c*nt',
      'ass' => 'a**',
      'bitch' => 'b*tch',
      'tits'  => 't*ts'}

  def censor_words
    lowercase=self.downcase
    sentence=lowercase.split(' ')
    censored_words = @@censored_words.dup
    censored_sentence = sentence.collect do |w|
      if censored_words.include?(w)
        wordindexo=lowercase.index(w)
        wordindexc=wordindexo+w.length-1
        lowercase[wordindexo..wordindexc]=censored_words[w]

      end
    end
    lowercase

  end


end
