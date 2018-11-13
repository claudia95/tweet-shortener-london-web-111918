# Write your code here.
def dictionary
  convert = {
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
  tweet.split(" ").map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.map do |word|
    puts word_substituter(word)
  end
end

def selective_tweet_shortener(tweet)
    tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
    truncated_tweet = word_substituter(tweet)
    if truncated_tweet.length > 140
      truncated_tweet = truncated_tweet[0..136] << " ..."
    end
    truncated_tweet
end
  
