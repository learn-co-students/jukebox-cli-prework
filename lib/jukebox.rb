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
  songs.each_with_index do |elem, index|
    puts "#{index+1}. #{elem}"
  end
end

def play(songs)
    puts "Please enter a song name or number:"
    song = gets.chomp

    puts "integer #{song.to_i}"
    puts "string #{song.to_s}"

    songs.each do |elem|
        if elem == song.to_s
            puts "Playing #{elem}"
            return
        end
    end

    if song.to_i < songs.length && song.to_i>0
        puts "Playing #{songs[song.to_i-1]}"
        return
    end
    puts "Invalid input, please try again"

end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help()
  puts "Please enter a command:"
  command = gets.chomp
  until command == "exit"
    if command == "help"
      help()
    elsif command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif
      puts "Command not found."
    end
    puts "Please enter a command:"
    command = gets.chomp
  end

  exit_jukebox
end
