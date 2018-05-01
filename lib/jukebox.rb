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


def list(songs_array)
  new_songs_array = []
  songs_array.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end


def play(songs_array)
  puts "Please enter a song name or number:"
  response = gets.chomp
  songs_array.each_with_index do |song, i|
    if response == song || response.to_i == i + 1
      puts "Playing #{song}"
      return nil
    end
  end
  puts "Invalid input, please try again"
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs_array)
  help
  puts "Please enter a command:"
  response = gets.chomp

  loop do
    if response == "exit"
      exit_jukebox
      break
    end

    if response == "help"
      help
      puts "Please enter a command:"
      response = gets.chomp
    end

    if response == "list"
      list(songs_array)
      puts "Please enter a command:"
      response = gets.chomp
    end

    if response == "play"
      play(songs_array)
      puts "Please enter a command:"
      response = gets.chomp
    end
  end


end
