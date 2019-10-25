# Add your code here
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

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# user_name = gets.strip
#
# puts say_hello(user_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
 end

 def list(songs)
   songs.each.with_index do |song, i|
     puts "#{i + 1}. #{song}"
   end
 end

 def play(songs)
   puts "Please enter a song name or number:"
   song_to_play = gets.chomp
   if(1..9).to_a.include?(song_to_play.to_i)
     puts "Playing #{songs[song_to_play.to_i - 1]}"
   elsif songs.include?(song_to_play)
     puts "Playing #{song_to_play}"
   else
     puts "Invalid input, please try again"
   end
 end

 def exit_jukebox
   puts "Goodbye"
 end

 def run(songs)
   loop do
     puts "Please enter a command:"
     command = gets.chomp
     case command
     when 'help'
       help
     when 'list'
       list(songs)
     when 'play'
       play(songs)
     when 'exit'
       exit_jukebox
       break
     end
   end
 end
