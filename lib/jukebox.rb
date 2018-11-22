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

def list(playlist)
  playlist.each_with_index do |song, i|
    puts "#{i + 1}. " + song
  end
end

def play(playlist)
  print "Please enter a song name or number: "
  song = gets.chomp

  if song.to_i > 0
    num = song.to_i
    if num > 0 && num <= playlist.length
      puts playlist[num-1]
    else
      puts "Invalid input, please try again"
    end
  else
    if playlist.include?(song)
      puts song
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(playlist)
  running = true

  help

  while running
    print "Please enter a command: "
    command = gets.chomp

    case command
    when "help"
      help
    when "list"
      list(playlist)
    when "play"
      play(playlist)
    when "exit"
      exit_jukebox
      running = false
    else
      puts "Invalid input!"
    end
  end
end
