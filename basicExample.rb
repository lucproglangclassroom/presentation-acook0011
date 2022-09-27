def notYourBuddy(phrase)
  if phrase.include? 'buddy'
    phrase['buddy'] = "guy"
  elsif phrase.include? 'guy'
    phrase['guy'] = "friend"
  elsif phrase.include? 'friend'
    phrase['friend'] = "buddy"
  end
end

greeting = "Hey there, friend."
notYourBuddy(greeting)
puts greeting

# Output: "Hey there, buddy."


