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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number"
  index_array = (1..songs.length).to_a
  input = gets.chomp
  
  if songs.include?(input)
    puts "Playing #{input}."
  elsif index_array.include?(input.to_i)
    puts "Playing #{songs[input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
  
end

def list(songs)
  songs.each_with_index do |x, i|
    puts "#{i + 1}. #{songs[i]}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  
  loop do 
    case input
    
    when "list"
      list(songs)
      puts "Please enter a command:"
      input = gets.chomp
    when "play"
      play(songs)
      puts "Please enter a command:"
      input = gets.chomp
    when "help"
      help
      puts "Please enter a command:"
      input = gets.chomp
    when "exit"
      break
    else
      help
      puts "Please enter a command:"
      input = gets.chomp
    end
  end
  exit_jukebox
end