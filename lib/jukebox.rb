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

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  songs_input = gets.chomp

  # Prior to adding the first part of the first test in the below input,
  # input such as "3a" would be read as 3
  if songs_input.to_i.to_s == songs_input && songs_input.to_i.between?(1,songs.size)
    puts "Playing #{songs[songs_input.to_i-1]}"
  elsif songs.include?(songs_input)
    puts "Playing #{songs_input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  input = nil
  until input == "exit"
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    end
  end
  exit_jukebox
end
