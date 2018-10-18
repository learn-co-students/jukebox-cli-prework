#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

songs = {
 "Go Go GO" => '< /Users/manonpilaud/Development/Prep_Labs/jukebox-cli-prework/audio/01.mp3 >/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => '< /Users/manonpilaud/Development/Prep_Labs/jukebox-cli-prework/audio/02.mp3 >/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '< /Users/manonpilaud/Development/Prep_Labs/jukebox-cli-prework/audio/03.mp3 >/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => '</Users/manonpilaud/Development/Prep_Labs/jukebox-cli-prework/audio/04.mp3>/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => '< /Users/manonpilaud/Development/Prep_Labs/jukebox-cli-prework/audio/05.mp3 >/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => '< /Users/manonpilaud/Development/Prep_Labs/jukebox-cli-prework/audio/06.mp3>/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '< /Users/manonpilaud/Development/Prep_Labs/jukebox-cli-prework/audio/07.mp3 >/jukebox-cli/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(songs)
  songs.each_with_index do |song,index|
    puts "#{index+1}. #{song}"
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  songs.each_with_index do |song, index|
    if (input.to_i - 1 == index)
      puts "Playing #{songs[index]}"
    elsif songs.include?(input)
    puts "Playing #{input}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(ongs)
  help
  while true
    puts "Please enter a command:"
    user_input = gets.chomp
    case user_input
       when "list"
         list(songs)
       when "play"
         play(songs)
       when "help"
         help
       when "exit"
         exit_jukebox
         break
       else
         help
       end
   end
end

run(songs)
