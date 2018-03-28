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
  # binding.pry
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each.with_index(1) do |song, index|
    puts "#{index}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  # binding.pry
  if response.to_i.between?(1, 9)
    puts "Playing #{songs[response.to_i - 1]}"
  elsif songs.include?(response)
    songs.find do |song|
      song.include?(response)
    puts "Playing #{song}"
  end
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
user_response = gets.chomp

  while user_response != "exit"

    if user_response == "help"
      help
    end
    if user_response == "list"
      list(songs)
    end
    if user_response == "play"
      play(songs)
    end
    puts "Please enter a command:"
    user_response = gets.chomp
  end
puts "Goodbye"
end
