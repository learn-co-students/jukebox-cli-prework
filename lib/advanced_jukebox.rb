my_songs = {
 "Go Go GO" => '/Users/mikekruszewski/Development/flatiron-prework/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/Users/mikekruszewski/Development/flatiron-prework/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/Users/mikekruszewski/Development/flatiron-prework/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/Users/mikekruszewski/Development/flatiron-prework/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
 "Wolf" => '/Users/mikekruszewski/Development/flatiron-prework/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
 "Blue" => '/Users/mikekruszewski/Development/flatiron-prework/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/Users/mikekruszewski/Development/flatiron-prework/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
  my_songs.each {|song_key, song_value|
    puts "#{song_key}"
  }
end


def play(my_songs)
  invalid_choice = true
  puts "Please enter a song name:"
  user_choice = gets.chomp
  my_songs.each {|song_key, song_value|
    if user_choice == song_key
      invalid_choice = false
      puts "Playing #{song_key}"
      system "open #{song_value}"
    end
  }
  puts "Invalid input, please try again" if invalid_choice == true
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  exit_status = false
  while exit_status == false do
    puts "Please enter a command:"
    user_command = gets.chomp
    case user_command
      when "help"
        help
      when "list"
        list(my_songs)
      when "play"
        play(my_songs)
      when "exit"
        exit_status = true
        exit_jukebox
      else
        puts "Please enter a valid command"
        help
    end
  end
end

run(my_songs)
