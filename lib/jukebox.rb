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

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  case command.downcase
    when "help" then help
    when "list" then list(songs)
    when "play" then play(songs)
    when "exit" 
      exit_jukebox
      exit
    else
      puts "That is not a valid command. Please try again"
      run
  end
  run(songs)
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  if songs.include?(choice) then
    puts "Playing #{choice}"
  elsif (choice.to_i-1).between?(0,songs.length)
    puts "Playing #{songs[choice.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index| 
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end
