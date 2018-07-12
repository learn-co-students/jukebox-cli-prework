require 'pry'

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

#def say_hello(name)
#  "Hi #{name}!"
#end
 
#puts "Enter your name:"
#users_name = gets.chomp
 
#puts say_hello(users_name)

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_choice = gets.chomp
  is_valid = "no"
  
  songs.each_with_index do |song, index|
    if user_choice == (index + 1).to_s || user_choice == song
      puts "Playing #{song}"
      is_valid = "yes"
    end
  end
  
  if is_valid == "no"
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_response = gets.chomp
  
  while user_response != "exit"
    if user_response == "list"
      list(songs)
    elsif user_response == "play"
      play(songs)
    elsif user_response == "help"
      help
    elsif user_response == "exit"
      exit_jukebox
    else
      "Not a valid command!"
    end
    user_response = gets.chomp
  end
  exit_jukebox
end