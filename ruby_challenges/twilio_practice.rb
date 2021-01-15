require 'rubygems'
require 'twilio-ruby'

account_sid = "ACdc5b71ee4c98c4b9d9f396eae6222d74"
auth_token = "1915b6aba6e7c7003c33b71589bf911c"

@client = Twilio::REST::Client.new(account_sid, auth_token)

list_of_answers = [
    "It is certain", "It is decidedly so", "Without a doubt", "Yes, definitely", "You may rely on it", "As I see it, yes", "Most likely", "Outlook, good", "Yes"
].sample

message = @client.api.account.messages.create(
    :from => "+12566769519",
    :to => "+17192443055",
    :body => "#{list_of_answers}"
)

def get_user_question
    puts "Ask a Yes or No question: "
    user_question = gets
    end 

get_user_question
puts message.to