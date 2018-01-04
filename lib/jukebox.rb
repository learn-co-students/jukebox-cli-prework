require "pry"

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
  songs.each {|song| puts "#{songs.index(song) + 1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  song_number_or_name = gets.chomp
  if songs[song_number_or_name.to_i - 1] != nil && song_number_or_name == song_number_or_name.to_i.to_s
    puts "Playing #{songs[song_number_or_name.to_f - 1]}"
  elsif songs.include?(song_number_or_name)
    puts "Playing #{song_number_or_name}"
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
    if user_input == list
      list(songs)
      run
    elsif user_input == play
      play(songs)
      run
    elsif user_input == help
      run
    end
  end
  exit_jukebox
end
