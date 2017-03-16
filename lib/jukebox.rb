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

def run(songs)
  help
  puts "Please enter a command:"
  str = gets.chomp
  while str != "exit"
    if str == "play" || str == "list"
      send(str+"(songs)")
    else
      send(str)
    end
    puts "Please enter a command:"
    str = gets.chomp
  end
  exit_jukebox
end

def play(songs)
  puts "Please enter a song name or number:"
  str = gets.chomp
  arr = []
  if str.to_i.between?(1,9)
    #binding.pry
    puts "Playing #{songs[str.to_i - 1]}"
  else
    if songs.include?(str)
      puts "Playing #{str}"
    else
      puts "Invalid input, please try again"
    end
  end

end

def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"

end

def list(songs)
  i = 1
  songs.each do |k|
    puts "#{i}. #{k}"
    i += 1
  end

end

def exit_jukebox
  puts "Goodbye"

end
