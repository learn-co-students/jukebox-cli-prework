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

# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.chomp
 
# puts say_hello(users_name)

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of the songs you can play
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
  answer = gets.chomp
  songs.each_with_index do |song, index|
    if answer == song
      puts "Playing #{song}"
    elsif answer.to_i == (index + 1)
      puts "Playing #{songs[index]}"
    else
      puts "Invalid input, please try again"
    end
  end
  
end

# def test
#   answer = gets.chomp
#   if answer.to_i == 1
#     puts "Yay"
#   elsif answer == "apple"
#     puts "apple yay!"
#   end
# end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_input = ""
  while user_input != "exit"
  puts "Please enter a command:"
  user_input = gets.chomp
    if user_input == "list"
      list(songs)
    elsif user_input == "play"
      play(songs)
    elsif user_input == "help"
      help
    end
  end
  exit_jukebox
end
