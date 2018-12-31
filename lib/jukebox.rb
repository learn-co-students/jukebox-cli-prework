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
require "pry"

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_request = gets.chomp
  if (1..9).to_a.include?(user_request.to_i)
  puts "Playing #{songs[user_request.to_i-1]}"
  elsif songs.include?(user_request)
  puts "Playing #{user_request}"
  else puts "Invalid input, please try again"
  end 
end 

def list(songs_arr)
  songs_arr.each_with_index do |song, i|
  puts "#{i+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
 
  help
  puts "Please enter a command:"
  user_command = gets.chomp
  while user_command != "exit"
    if user_command == "list"
      list(songs)
    elsif user_command == "play"
    play(songs)
    elsif user_command == "help"
       help
    else exit_jukebox
    end
  end
end







