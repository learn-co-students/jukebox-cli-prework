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
  input = gets.chomp
  if input == "exit"
    return exit_jukebox
  elsif input == "list"
    return list
  elsif input == "help"
    return help
  else 
    return run
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
    songs.each_with_index do |x, i|
      if input == x || input.to_i == i + 1
        puts "Playing #{x}"
      else
        puts "Invalid input, please try again"
    end
  end
end


def list(songs)
  songs.each_with_index do |i, x|
    puts "#{i}. #{x}"
  end
end

def help
  commands_array =  ["I accept the following commans:", 
                     "- help : displays this help message",
                     "- list : displays a list of songs you can play",
                     "- play : lets you choose a song to play",
                     "- exit : exits this program"]
    commands_array.each do |x|
      puts x 
    end
end

def exit_jukebox
  puts "Goodbye"
end



