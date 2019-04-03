require 'pry'

def help
  binding.pry
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
    if user_response == song || user_response == (index + 1)
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  }
end
