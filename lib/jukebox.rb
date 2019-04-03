require 'pry'

def help
  puts "I accept the following command:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : lets you exit this program"
end

def list(songs)
  songs.each.with_index{|song, index| puts "#{index + 1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  songs.each_with_index{|song, index|
    real_index = "#{index+1}"
    if user_response == song || user_response == real_index
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp.downcase
    case user_input
      when "list"
        list(songs)
      when "help"
        help
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
      else
        "Invalid Command"
    end
end
