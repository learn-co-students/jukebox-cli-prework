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

def list(songs)
  songs.each.with_index(1) do |song, number|
    puts "#{number}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp

  if input.to_i != 0 && input.to_i <= songs.size
    index = input.to_i - 1
    puts "Playing #{songs[index]}"
  elsif songs.include?(input)
    puts "Playing #{input}"
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
  input = gets.chomp

  while input != "exit"
    case input

      when "help"
        help
        puts "Please enter a command:"
        input = gets.chomp
      when "list"
        list(songs)
        puts "Please enter a command:"
        input = gets.chomp
      when "play"
        play(songs)
        puts "Please enter a command:"
        input = gets.chomp
      else
        puts "Please enter a valid command:"
        input = gets.chomp
      end
    end

    exit_jukebox
end
