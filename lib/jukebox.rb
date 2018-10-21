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
  puts "I accept the following commands:"
  puts "  - help : displays this help message"
  puts "  - list : displays a list of songs you can play"
  puts "  - play : lets you choose a song to play"
  puts "  - exit : exits this program"
end

def play(array)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if (1..9).to_a.include?(user_input.to_i)
    puts "Playing #{array[user_input.to_i - 1 ]}"
  elsif array.include?(user_input)
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again"
  end
end

def list(array)
  array.each_with_index do | song, index|
    puts "#{index + 1}. #{array[index]}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  while user_input != "exit"
    case user_input
      when "play"
        play(array)
      when "list"
        list(array)
      else "help"
        help
    end
    puts "Please enter a command:"
    user_input = gets.chomp
  end
  exit_jukebox
end

run(songs)
