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
          - help: displays this help message
          - list: displays a list of songs you can playn
          - play: lets you choose a song to play
          - exit: exits the program"
end

def list(songs_array)
  songs_array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs_array)

  puts "Please enter a song name or number:"
  song_selection = gets.chomp
  if songs_array.include?(song_selection) == false && (song_selection.to_i > songs_array.length + 1 || song_selection.to_i == 0)
    puts "Invalid input, please try again."
  else
    songs_array.each_with_index do |song, index|
      if song_selection == song
        puts "Playing #{song}"
      elsif song_selection == index.to_s
        puts "Playing #{songs_array[song_selection.to_i - 1]}"
      end
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_input = ""
  while user_input != "exit"
    puts "Please enter a command:"
    user_input = gets.chomp
    case user_input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    else
    end
  end
  exit_jukebox
end
