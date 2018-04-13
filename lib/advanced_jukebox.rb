
 my_songs = {
 "Go Go GO" => '/Users/jessebillard/Desktop/coding/dev/flatironLabs/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/Users/jessebillard/Desktop/coding/dev/flatironLabs/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/Users/jessebillard/Desktop/coding/dev/flatironLabs/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/Users/jessebillard/Desktop/coding/dev/flatironLabs/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
 "Wolf" => '/Users/jessebillard/Desktop/coding/dev/flatironLabs/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
 "Blue" => '/Users/jessebillard/Desktop/coding/dev/flatironLabs/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/Users/jessebillard/Desktop/coding/dev/flatironLabs/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
    song_array = my_songs.keys
    song_array.each_with_index do |item, index|
        puts "#{index + 1}. #{item}"
    end
end


def play(my_songs)
    puts "Please enter a song name:"
    user_response = gets.chomp
    if my_songs.keys.include?(user_response)
        system "open #{my_songs[user_response]}"
    else
        puts "Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command: "
  user_answer = gets.chomp
  if user_answer == "exit"
      exit_jukebox
  end
  until user_answer == "exit"
      case user_answer
          when "list"
            list(my_songs)
          when "play"
            play(my_songs)
          when "help"
            help
          when "exit"
            break
      end
      puts "Please enter a command: "
      user_answer = gets.chomp
  end
  exit_jukebox
end














