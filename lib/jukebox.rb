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
  puts "- play : leys you choose a song to play"
  puts "- exit : exits this program"
end


def list(songs)
  songs.each_with_index {|song, i|
    puts "#{i+1}. #{song}"
  }
end


def play(songs)
  songs_hash = {}
  name = ""
  songs.map.with_index(1) {|name,index|
    songs_hash[index.to_s] = name
  }

  puts "Please enter a song name or number:"
  input = gets.chomp
  if songs_hash.keys.include?(input)
    name = songs_hash[input]
    puts "Playing #{name}"
  elsif songs_hash.values.include?(input)
    name = input
    puts "Playing #{name}"
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help

  cmd = ""
  until cmd == "exit"
    puts "Please enter a command:"
    cmd = gets.chomp
    case cmd
      when "exit"
        exit_jukebox
        break
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
    end
  end
end
