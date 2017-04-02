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

def help
   puts "I accept the following commands:"
   puts "- help : displays this help message"
   puts "- list : displays a list of songs you can play"
   puts "- play : lets you choose a song to play"
   puts "- exit : exits this program"
end

def play(songs)
   puts "Please enter a song name or number:"
   answer = gets.chomp
   if (1..9).to_a.include?(answer.to_i)
     puts "Playing #{songs[answer.to_i-1]}"
   elsif songs.include?(answer)
     puts "Playing #{answer}"
   else
     puts "Invalid input, please try again"
   end
end

def list(songs)
    songs.each_with_index { |x,i| puts "#{i+1}. #{x}" }
end

def exit_jukebox
   puts "Goodbye"
end

def run(songs)
   puts "Please enter a command:"
   answer = gets.chomp
   if answer == "help"
     help
   elsif answer == "list"
     list
   elsif answer == "play"
     play
   else answer == "exit"
     exit_jukebox
   end
 end
