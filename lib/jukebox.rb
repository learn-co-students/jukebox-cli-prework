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

def help()
  p "I accept the following commands:\n
- help : displays this help message\n
- list : displays a list of songs you can play\n
- play : lets you choose a song to play\n
- exit : exits this program\n"
end

def list(songs_arr)
  songs_arr.each_with_index do |song, counter|
    puts "#{counter + 1}. #{song}"
  end
end

def play(song_arr)
  puts "Please enter a song name or number: "
  req_song = gets.chomp
  
  until (req_song.to_i > 0 && req_song.to_i < song_arr.size) || song_arr.include?(req_song)
    puts "Invalid input, please try again"
    req_song = gets.chomp
  end

  if (req_song.to_i > 0 && req_song.to_i < song_arr.size)
    puts "Playing #{song_arr[req_song.to_i - 1]}"
  else
    puts "Playing #{song_arr[song_arr.find_index(req_song)]}"
  end
end

play(songs)

def exit_jukebox()
  puts "Goodbye"
end
