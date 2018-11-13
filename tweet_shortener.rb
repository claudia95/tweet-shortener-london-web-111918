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
    if tweet.chr.length > 140
      word_substituter(tweet)
    else
       phrase
    end
end

def shortened_tweet_truncator(tweet)
    if word_substituter(tweet).chr.length > 140
      truncated_tweet = word_substituter(tweet).chr[0..136].push("...").join(" ")
    else
      word_substituter(tweet)
    end
end
  
