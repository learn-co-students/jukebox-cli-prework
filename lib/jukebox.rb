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
  puts "I accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|item, index| puts (index+1).to_s + ". " + item }
end

def play(songs)
  puts  "Please enter a song name or number:"
  input = gets.chomp
  if (1..(songs.length)).include?(input.to_i)
    puts "Playing " + (songs[input.to_i-1]).to_s
  elsif (songs.include?(input))
    puts "Playing " + songs[songs.index(input)]
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input = ""
  help
  while input != "exit"
    puts "Please enter a command:"
    input = gets.strip
    case input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
    else
      puts "Invalid input, please try again"
    end
  end
end
