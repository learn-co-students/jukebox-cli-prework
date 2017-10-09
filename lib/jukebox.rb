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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
"
end

def list(songs)
    songs.each_with_index{|song,index| puts (index+1).to_s + ". " + song}
end

def play(songs)
  songs_hash = {}
  songs.each_with_index{|song,index| songs_hash[(index+1).to_s] = song}
  puts "Please enter a song name or number:"
  user_says = gets.chomp
#  binding.pry

  if songs_hash.has_key?(user_says)
    puts  "Playing #{songs_hash[user_says]}"
  elsif songs_hash.has_value?(user_says)
    puts "Playing #{user_says}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp

  until user_input == "exit"
    case user_input
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      break
    else
    end
    puts "Please enter a command:"
    user_input = gets.chomp
  end
  exit_jukebox
end
