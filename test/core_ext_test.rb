# Censor_for_seven_words/test/core_ext_test.rb
 
require 'test_helper'
 
class CoreExtTest < Test::Unit::TestCase
  def test_censor_words_replaces_bad_words
    assert_equal "squawk! Hello World", "Hello World".censor_words
  end

#  def test_censor_words_replaces_bad_words
 #   assert_equal "I don't give a f*ck ", "I don't give a fuck ".censor_words
  #end
end
