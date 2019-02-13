require 'pry'
def dictionary
hash = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"

  }
end

def word_substituter(tweet)
  processed_tweet = tweet.split(" ").collect do |word|
    improved_word = word
    dictionary.each do |original_word, slang_word|
      if word == original_word
        improved_word = slang_word
      end
    end
    improved_word
  end
  processed_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts tweet
  end
end
