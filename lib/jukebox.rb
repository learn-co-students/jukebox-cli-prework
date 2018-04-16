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
  puts "I accept the following commands:\n
- help : displays this help message\n
- list : displays a list of songs you can play\n
- play : lets you choose a song to play\n
- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  now_playing = "Invalid input, please try again"
  songs.each_with_index do |song, index|
    if response == song || response == (index + 1).to_s
      now_playing = "Playing #{song}"
    end
  end
  puts now_playing
end

def list(songs)
  songs.each_with_index { |val, index| puts "#{index + 1}. " + val}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  response = gets.chomp
  until response == "exit"
    if response == "help"
      help
      puts "Please enter a command:"
      response = gets.chomp
    elsif response == "play"
      play(songs)
      puts "Please enter a command:"
      response = gets.chomp
    elsif response == "list"
      list(songs)
      puts "Please enter a command:"
      response = gets.chomp
    end
  end
  exit_jukebox
end
