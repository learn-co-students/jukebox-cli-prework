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
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts (index + 1).to_s + song
  end
end
##################################
def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp

  if song_choice.to_i.is_a?(Numeric)
    song = songs[song_choice.to_i - 1]
    puts "Playing #{song}"
  end
  if songs.include?(song_choice)
    puts "Playing #{song_choice}"
  else
    puts "Invalid input, please try again"

  end
end
###################################
def exit_jukebox
  puts "Goodbye"
end

def run(method)
  help

  puts "Please enter a command:"
  user_command = gets.chomp

  until user_command = "exit"
    puts "Please enter a command:"
    user_command = gets.chomp
    if user_command = "help"
      help
    elsif user_command = "list"
      list(songs)
    elsif user_command = "play"
      play(songs)
    end
  end

  exit_jukebox
end
