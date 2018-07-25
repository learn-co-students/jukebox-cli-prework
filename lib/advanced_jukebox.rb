#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/home/oliviatian27/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/home/oliviatian27/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/home/oliviatian27/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/home/oliviatian27/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
"Wolf" => '/home/oliviatian27/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
"Blue" => '/home/oliviatian27/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/home/oliviatian27/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
}

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:
 help : displays this help message
 list : displays a list of songs you can play
 play : lets you choose a song to play
 exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  my_songs.each do |key,value|
    puts key
  end
end


def play(my_songs)
  puts "Please enter a song name or number:"
  song=gets.chomp
  if my_songs.keys.include?(song)
     system "open #{my_songs[song]}"
  else
     puts "Invalid input, please try again"
  end
end

def exit_jukebox
    puts "Goodbye"
end

def run(my_songs) 
  help
  flag=true
  while flag
  puts "Please enter a command:"
  command=gets.chomp
  case command
  when "list"
    list(my_songs)
  when "play"
    play(my_songs)
  when "help"
    help
  when "exit"
    exit_jukebox
    flag=false
   end
  end
end