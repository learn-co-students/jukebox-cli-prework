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
  puts  "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song,idx|
    puts "#{idx+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  song_idx = nil
  if response.to_i.to_s == response
    if response.to_i > 0 && response.to_i <= songs.size
      song_idx = response.to_i - 1
    end
  else
    songs.each_with_index do |song,idx|
      if song == response
        song_idx = idx
      end
    end
  end

  if song_idx != nil
    puts "Playing #{songs[song_idx]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  keep_going = true
  while keep_going do
    puts "Please enter a command:"
    cmd = gets.chomp
    case cmd
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      keep_going = false
    end
  end
end
