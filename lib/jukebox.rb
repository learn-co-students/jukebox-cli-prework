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
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(song_array)
  puts "Please enter a song name or number:"

  input = gets.chomp

  if song_array.include?(input)
    puts "Playing #{input}"
  elsif song_array[input.to_i-1] && input.to_i-1 >= 0
    puts "Playing #{song_array[input.to_i-1]}"
  else
    puts "Invalid input, please try again."
  end
end


def exit_jukebox

 puts "Goodbye"

end


def run(songs)

  input = ''

  while input != "exit"
    help
    puts "Please enter a command:"
    input = gets.chomp
    if input == 'help'
      help
    elsif input == 'play'
      play(songs)
    elsif input == 'exit'
      exit_jukebox
    end
  end

end
