# Write your code here.
paragraph = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

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

def word_substituter(tweet_one)
    tweet_one.split(" ").map do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
      end
    end.join(" ")
end 

def bulk_tweet_shortener(tweets)
  tweets.map do |paragraph|
    puts word_substituter(paragraph)
  end
end

def selective_tweet_shortener(tweet_one)
  tweet_one.split(" ").map do |paragraph|
    if paragraph.length > 140
      word_substituter(paragraph)
      elsif paragraph.length <= 140
      paragraph
    end
  end
end

def shortened_tweet_truncator(tweet)
    if tweet.length > 140
      word_substituter(paragraph)[0..136] + "..."
    else
      word_substituter(tweet)
    end
end 