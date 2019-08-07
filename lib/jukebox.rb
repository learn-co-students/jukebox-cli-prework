require 'pry'
# Add your code here
# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.strip
 
# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end 
end 

# songs = [
#   "Phoenix - 1901",
#   "Tokyo Police Club - Wait Up",
#   "Sufjan Stevens - Too Much",
#   "The Naked and the Famous - Young Blood",
#   "(Far From) Home - Tiga",
#   "The Cults - Abducted",
#   "Phoenix - Consolation Prizes",
#   "Harry Chapin - Cats in the Cradle",
#   "Amos Lee - Keep It Loose, Keep It Tight"
# ]

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.strip
  # binding.pry
  songs.each do |song|
    # binding.pry 
    if response.to_i.between?(1,songs.length)
      puts "Playing #{songs[response.to_i-1]}"
      return 
    elsif response == song
      puts "Playing #{response}"
      return 
      # binding.pry
    else
      puts "Invalid input, please try again"
      return 
    end 
  end
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  puts "Please enter a command:"
  response = gets.strip
  if response == "help"
    help
  elsif response == "list"
    list(songs)
  elsif response == "play"
    play(songs)
  elsif response == "exit"
    exit_jukebox
  else
    puts "Invalid input, please try again"
  end
end 




