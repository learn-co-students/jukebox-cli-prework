

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

#def say_hello(name)

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)

def greet_user(select_option)

  puts "Hi there! Please choose an option:
    - help
    - list
    - play
    - exit"
  selected_option = gets.chomp

  puts greet_user(selected_option)
end

def help
    puts "I accept the following commands:
          - help : displays this help message
          - list : displays a list of songs you can play
          - play : lets you choose a song to play
          - exit : exits this program"
        end

def list(songs)
  songs.each_with_index do |songs, i|
    puts "#{i+1}. #{songs}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  play_song = gets.chomp
  if (1..9).to_a.include?(play_song.to_i)
    puts "Playing #{songs[play_song.to_i-1]}"
  elsif songs.include?(play_song)
    puts "Playing #{play_song}"
  else
    puts "Invalid input, please try again"
  end
end

 def exit_jukebox
   puts "Goodbye"
 end

 def run(songs)
   help
   prompt = puts "Please enter a command:"
   while answer = gets.chomp
    case answer
     when "help"
       help
       prompt
     when "list"
       list(songs)
       prompt
     when "play"
       play(songs)
       prompt
     when "exit"
       exit_jukebox
       break
      end
    end
 end
