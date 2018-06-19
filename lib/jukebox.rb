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

def list(my_songs)
  song_array = []
  my_songs.each do |key, value|
  song_array << key
end
puts song_array
return song_array
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
end


def play(my_songs)
  song = gets.chomp

  if my_songs.include?(song)
    puts "Playing #{song}"
  else
    song_number = song.to_i
    if song_number < 1 || song_number > my_songs.length
      puts "Invalid input, please try again"
    else
      puts "Playing #{my_songs[song_number - 1]}"
    end
  end
end




def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  puts "Please enter a command:"
  gets.chomp
  if gets.chomp == "list"
    list
  elsif gets.chomp == "help"
    help
  elsif gets.chomp == "play"
    play
  elsif gets.chomp == exit
    exit_jukebox
  else
    help
end
end
