my_songs = {
 "Go Go GO" => 'Users/natashabuck/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
 "LiberTeens" => 'Users/natashabuck/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
 "Hamburg" => 'Users/natashabuck/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
 "Guiding Light" => 'Users/natashabuck/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
 "Wolf" => 'Users/natashabuck/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
 "Blue" => 'Users/natashabuck/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => 'Users/natashabuck/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(my_songs)
  song_names = []
  my_songs.each { |k, v|
    song_names << k
  }
  song_names.each_with_index { |name, idx|
    puts "#{idx+1}. #{name}"
  }
end


def play(my_songs)
  puts "Please enter a song name:"
  user_song = gets.chomp
  my_songs.each {|song, path|
    if song == user_song
      system "open #{my_songs[song]}"
    end
  }
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  user_response = ""
  help
  while user_response != "exit"
    puts "Please enter a command:"
    user_response = gets.chomp
    case user_response
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    when "help"
      help
    end
  end  
  exit_jukebox
end