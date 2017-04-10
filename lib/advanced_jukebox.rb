#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

 my_songs = {
 "Go Go GO" => '/home/luis-60503/code/labs/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/home/luis-60503/code/labs/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/home/luis-60503/code/labs/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/home/luis-60503/code/labs/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
 "Wolf" => '/home/luis-60503/code/labs/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
 "Blue" => '/home/luis-60503/code/labs/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/home/luis-60503/code/labs/jukebox-cli-prework/audio/Emerald-Park/07.mp3',
 }

def help
  puts ("I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program")
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  i = 1
  my_songs.each do |song_name, filename|
    puts("#{i} #{song_name}")
    i += 1
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  song = gets.chomp
  my_songs.each do |song_name, filename|
    if song == song_name
      puts(song)
      puts("#{filename}")
      system("open #{filename}")
      return
    end
  end
  puts("Invalid input, please try again")
end

def exit_jukebox
  puts("Goodbye")
end

def run(songs)
  help
  while true
    puts("Please enter a command:")
    input = gets.chomp.downcase
    case input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit
      break
    end
  end
end
