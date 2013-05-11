Censor for Seven Words
=========

This ruby gem will censor the seven words that can't be said on television per George Carlin in 1972. It will convert those words to censored versions of themselves.

Installation
------------
Add it to your Gemfile:

```ruby
gem "censor_for_seven_words"
```

You'll now be able to use censor_words to censor strings.

Setting Up Censor for Seven Words
------------
To use censor words in a view or controller, you simply need to include the ```censor_words``` method for your string variable.

This will automatically censor any of the seven words that you can't say on television(per George Carlin) without needing additional setup behind the scenes. 

For example, it can just be added to the string "content" for the post model and work out of the box:
```ruby
<p>
  <b>Content:</b>
  <%= @post.content.censor_words %>
</p>
```
This causes the dirty words to be censored. See the censored and uncensored versions here:

![Censor_for_seven_words showingsevenwordscensorship](/test/dummy/app/assets/images/showingsevenwordscensorship.png)


Background
------------
The censor uses these seven words and converts them using predefined hashes that put *s in the place of certain letters for the words, and they are converted in censor_words.
```ruby
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
```
