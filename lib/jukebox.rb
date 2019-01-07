require 'pry'

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

def play(songs)
  response = ""
  puts "Please enter a song name or number:"
  response = gets.chomp
  if response.scan(/\D/).empty? && (response.to_i < songs.length && response.to_i > 0)
    puts "Playing #{songs[response.to_i-1]}"
  elsif songs[0..8].include?(response)
    puts "Playing #{songs[songs.index(response)]}"
  else
    puts "Invalid input, please try again"
  end
  # binding.pry
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  command = ""
  help
  list(songs)
  while command != "exit"
    puts "Please enter a command:"
    command = gets.strip
    if command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "help"
      help
    elsif command == "exit"
      exit_jukebox
      break
    else
      puts "Please try again!"
    end
  end
  # exit_jukebox
end
