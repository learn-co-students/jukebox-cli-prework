#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

 my_songs = {
 "Go Go GO" => '/home/JoWilks/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/home/JoWilks/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/home/JoWilks/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/home/JoWilks/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
 "Wolf" => '/home/JoWilks/jukebox-cli-preworkaudio/Emerald-Park/05.mp3',
 "Blue" => '/home/JoWilks/jukebox-cli-preworkaudio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/home/JoWilks/jukebox-cli-preworkaudio/Emerald-Park/07.mp3'
 }

def help
  puts "Type help to get a list of commands"
  puts "Type play and then the song name to play that specific Song"
  puts "Type list to get a list of songs that can be played"
  puts "Type exit to exit the program"
end



def list(my_songs)
  my_songs.each {|song, path| puts "#{song}" }
end


def play(my_songs)
  puts "Please enter a song name:"
  user_selects = gets.chomp
   
   my_songs.each {|song, path| 
    if song == user_selects
      puts "Playing #{song}"
      open path
      run(my_songs)
    end}

    puts "Invalid input, please try again"
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  puts "Please enter a command:"
  user_input = gets.chomp
  
  if user_input.include?("play")
    play(songs)
  elsif user_input.include?("list")
    list(songs)
  elsif user_input.include?("help")
    help
  elsif user_input.include?("exit")
    exit_jukebox
  else run(songs)
  end
  
end
