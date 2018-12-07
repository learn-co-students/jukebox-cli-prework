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

def list (songs)
  songs.each_with_index {|song, index|
    song_number = index + 1
    puts "#{song_number}. #{song}"
  }
end

def play (songs)
  puts "Please enter a song name or number:"
  song_numbers = (0..9).to_a
  song_choice = gets.chomp
  if songs.include?(song_choice)
    puts "Playing #{song_choice}"
  elsif song_numbers.include?(song_choice.to_i - 1)
    puts "Playing #{songs[song_choice.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  help
  puts "Please enter a command:"
  command = ""
  while command != "exit"
    command = gets.chomp
    if command == "list"
      list (songs)
    elsif command == "help"
      help
    elsif command == "play"
      play (songs)
    elsif command == "exit"
      exit
      break
    end
  end
end
