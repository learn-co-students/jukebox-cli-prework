#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

 my_songs = {
 "Go Go GO" => '< /Users/carlosbarrera/Development/jukebox-cli-prework >/jukebox-cli/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '< /Users/carlosbarrera/Development/jukebox-cli-prework >/jukebox-cli/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '< /Users/carlosbarrera/Development/jukebox-cli-prework >/jukebox-cli/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '< /Users/carlosbarrera/Development/jukebox-cli-prework >/jukebox-cli/audio/Emerald-Park/04.mp3',
 "Wolf" => '< /Users/carlosbarrera/Development/jukebox-cli-prework >/jukebox-cli/audio/Emerald-Park/05.mp3',
 "Blue" => '< /Users/carlosbarrera/Development/jukebox-cli-prework >/jukebox-cli/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '< /Users/carlosbarrera/Development/jukebox-cli-prework >/jukebox-cli/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program" #this method should be the same as in jukebox.rb"

end



def list(my_songs)
  my_songs.each do |song|
    puts "#{song}" #this method is different! Collect the keys of the my_songs hash and
end                      #list the songs by name



def play(my_songs)
  puts "Please enter a song name"#this method is slightly different!
  users_input = gets.chomp #you should still ask the user for input and collect their song choice
    my_songs.each do |key, value|                          #this time, only allow user's to input a song name
      if users_input == key                         #check to see if the name they give is in fact a key of the my_songs hash
        system 'open < file path >'                      #if it isn't, tell them their choice is invalid
        users_input == [key][value]
      else                                #if it is, play the song using the system 'open <file path>' syntax
        puts "Your choice is invalid."                            #get the file path of the song by looking it up in the my_songs hash
      end
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"

  input = gets.chomp
  if input == "list"
    list(songs)
  elsif
    input == "play"
    play(my_songs)
  elsif
    input == "help"
    help
  else input == "exit"
    exit_jukebox
  end
end
