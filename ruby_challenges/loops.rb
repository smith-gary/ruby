all_tweets = [
    "I love you", 
    "My second tweet", 
    "I have the tweets"
]

all_tweets.each do |tweet|
    puts tweet
end

def fizz_buzz_array
    array = [1]
    number = 1
    while number < 100
        array.push number
        number += 1

    end
    fizz_buzz_array
end