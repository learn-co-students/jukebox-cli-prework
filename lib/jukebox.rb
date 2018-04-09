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

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index}. #{song}"
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  selection = gets.chomp
  songs.each_with_index do |song, index|
    if selection == song
      puts "Playing #{song}"
      return nil
    elsif selection == (index + 1).to_s
      puts "Playing #{song}"
      return nil
    end
  end
  puts "Invalid input, please try again"
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
      response = gets.chomp
    elsif response == "list"
      list(songs)
      response = gets.chomp
    elsif response == "play"
      play(songs)
      response = gets.chomp
    else
      puts "Invalid Entry"
      response = gets.chomp
    end
  end
  exit_jukebox
end
