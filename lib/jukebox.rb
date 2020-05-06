require 'pry'

# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.strip
 
# puts say_hello(users_name)
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  count = 0
  while count < songs.length do 
  puts "#{count + 1}. #{songs[count]}"
   count += 1
  end 
  songs
end

def play(songs)
  puts "Please enter a song name or number:"
  user_answer = gets.strip
  binding.pry
  if user_answer.to_i >= 1 &&  user_answer.to_i <= songs.length
    
    puts "Playing #{songs[user_answer.to_i - 1]}"
    
  elsif songs.include?(user_answer)
   puts "Playing #{songs.find {|song| song == user_answer} }"
  
  else
    puts "Invalid input, please try again"
  end
end



def exit_jukebox
  puts "Goodbye"
end

def run
puts "Please enter a command:"
 user_input = gets.strip
 
 
    if user_input == "list"
       list(songs)
    elsif user_input == "play"
      play(songs)
    elsif user_input ==  "help"
      help
    elsif user_input == "exit"
    exit_jukebox
  end
end








