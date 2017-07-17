#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

#!/usr/bin/env ruby

require_relative "../lib/advanced_jukebox"


my_songs = {
"Go Go GO" => '/Users/StopVoldemort/Desktop/jukebox-cli-prework-master/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/StopVoldemort/Desktop/jukebox-cli-prework-master/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/StopVoldemort/Desktop/jukebox-cli-prework-master/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/StopVoldemort/Desktop/jukebox-cli-prework-master/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/StopVoldemort/Desktop/jukebox-cli-prework-master/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/StopVoldemort/Desktop/jukebox-cli-prework-master/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/StopVoldemort/Desktop/jukebox-cli-prework-master/audio/Emerald-Park/07.mp3'
}





def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.keys.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_request = gets.chomp
  if songs.keys.include? song_request
    song_request_name = song_request
  elsif song_request.to_i>0 && song_request.to_i<=(songs.keys.length+1)
    song_request_name = songs.keys[song_request.to_i - 1]
  else
    puts "Invalid input, please try again"
  end
  puts "Playing #{song_request_name}"
  song_path = songs[song_request_name]
  system "open #{song_path}"
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when "list"
      list(songs)
    when "help"
      help
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      break
    end
  end
end




run(my_songs)
