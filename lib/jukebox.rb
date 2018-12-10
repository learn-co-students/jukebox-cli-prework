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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, number|
    puts "#{number + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_choice = gets.chomp
  if songs.each_with_index.any? do |song, number|
    user_choice == song || (number +1)
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
  end
end
end

def exit_jukebox
  puts "Goodbye"
end

def run(argument)
  help
  puts "Please enter a command:"
  user_input = gets.strip
  case 
    when user_input == "exit"
      exit_jukebox
    when user_input == "list"
      list(argument)
    when user_input == "help"
      help
    when user_input == "play"
      play(argument)
    else
  end
end
