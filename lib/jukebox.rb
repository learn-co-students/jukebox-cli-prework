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
puts   "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |e, i|
    puts "#{i + 1}. #{e}"
  end
end

def play(songs)
  numbers = ["1","2","3","4","5","6","7","8","9"]
  puts "Please enter a song name or number:"

  user_input = gets.chomp
  if numbers.include?(user_input)
    input_integar = user_input.to_i
  elsif user_input.is_a? String
    input_string = user_input
  end

    if songs.include?(input_string)
      puts "Playing #{input_string}"
    elsif input_integar
      puts "Playing #{songs[input_integar - 1]}"
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

  while user_input = gets.chomp
    case user_input
    when "list"
      list(songs)
      break
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      break
    else
      puts "Please enter a command:"
    end
  end
end
