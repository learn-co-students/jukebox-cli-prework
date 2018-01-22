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
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs_array)
  songs_array.each_with_index do |item, index|
    puts "#{index + 1}. #{item}"
  end
end

def play(songs_array)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if input.to_i != 0 && input.to_i < 10
    num_input = input.to_i
    puts "Playing #{songs_array[num_input - 1]}"
  elsif songs_array.include?(input)
      puts input
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs_array)
  help
  puts "Please enter a command:"
  input = gets.chomp
  loop do

    if input == "list"
      list(songs_array)
      puts "Please enter a command:"
      input = gets.chomp
    elsif input == "play"
      play(songs_array)
      puts "Please enter a command:"
      input = gets.chomp
    elsif input == "help"
      help
      puts "Please enter a command:"
      input = gets.chomp
    elsif input == "exit"
        exit_jukebox
      break
    else
      puts "Please enter a command:"
      input = gets.chomp
    end
  end
end
