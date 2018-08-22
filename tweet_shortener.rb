# Write your code here.

def dictionary
  has = {
    "Hello" => "hi",
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

def word_substituter(string)
  array = string.split(" ")
  array.each_with_index do |words, index|
    dictionary.keys.each do |x|
      if x == words
        array[index] = dicationary[x]
      end
    end
  end
  array.join(" ")
end 

def bulk_tweet_shortener(array)
  array.each_with_index do |tweet, index|
    tweet_array = tweet_split(" ")
    tweet_array.each_with_index do |word, index|
      dictionary.keys.each do |x|
        tweet_array[index] = dictionary[x]
      end
    end
  end 
  tweet = tweet_array.join(" ")
  puts tweet
end 

def selective_tweet_shortener
  