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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list (songs)
  songs.each_with_index{|song, i|
    puts "#{i+1}. #{song}"
  }
end

def play (songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  songs.each{|song|
    if user_input == song
      puts "Playing #{song}"
    elsif user_input.to_i>0 && user_input.to_i <= songs.length
      puts "Playing #{songs[user_input.to_i-1]}"
      return
    else
      puts "Invalid input, please try again"
      return
    end
  }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  while user_input != "exit"
    case user_input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    end
    puts "Please enter a command:"
    user_input = gets.chomp
  end
  exit_jukebox
end
