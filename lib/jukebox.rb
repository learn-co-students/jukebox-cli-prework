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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(my_songs)
  my_songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(my_songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  my_songs.each_with_index do |song, index|
    # binding.pry
    index + 1
    num = (index + 1).to_s
    if input == num || input == song
      # index += 1
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  until input == "exit"
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when "list"
      list
    when "play"
      play
    when "help"
      help
    end
  end
  if input == "exit"
    exit_jukebox
  end
end
