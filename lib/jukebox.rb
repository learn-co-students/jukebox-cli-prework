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
  songs.each_with_index {|song, idx|
    puts "#{idx+1}. #{song}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  name = gets.chomp
  idx = name.to_i
  if idx > 0 and idx <= songs.size
    puts "Playing #{songs[idx-1]}"
  else
    songs.each{|song|
      if song == name
        puts "Playing #{name}"
        return
      end
    }
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  while true
    puts "Please enter a command:"
    cmd = gets.strip
    if cmd == "exit"
      exit_jukebox()
      break
    elsif cmd == "help"
      help()
    elsif cmd == "play"
      play(songs)
    elsif cmd == "list"
      list(songs)
    end
  end
end