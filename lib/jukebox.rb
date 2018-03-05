require 'pry'
Pry.config.input = STDIN
Pry.config.output = STDOUT
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


def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  songs.each_with_index do |song, number|
    #binding.pry
    n = number + 1
    if n.to_s == response || song == response
      #binding.pry
      puts "Playing #{songs[number]}"
    else 
      puts "Invalid input, please try again"
    end
  end
end

def list(songs)
  songs.each_with_index do |song, idx|
  #binding.pry
  n = idx + 1
  #binding.pry
  puts "#{n.to_s}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  response = gets.chomp

  #while response != "exit"
    if response == "list"
      list(songs)
    elsif response == "play"
      play(songs)
    elsif response == "help"
      help
    else
      exit_jukebox
    end
end
