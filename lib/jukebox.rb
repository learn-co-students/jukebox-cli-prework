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
  puts " - help : displays this help message"
  puts " - list : dislays a list of songs you can play"
  puts " - play : lets you choose a song to play"
  puts " - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a valid song name or number:"
  choice = gets.chomp
  song_choice = nil
  if(choice.is_a?(String))
    songs.each do |song|
      if song.include?(choice)
        song_choice = song
        break
      end
    end
  elsif choice.is_a?(Integer)
    song_choice = songs[choice - 1]
  end
  if song_choice != nil
    puts "Playing #{song_choice}"
  else
    puts "Invalid input, please try again!"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(song_list)
  help
  puts "Please enter a command:"
  comm = gets.chomp
  case(comm.downcase)
  when "help"
    help
  when "play"
    play(song_list)
  when "list"
    list(song_list)
  when "exit"
    exit_jukebox
  end
end
