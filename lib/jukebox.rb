require "pry"

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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end 


def play(songs)
  puts "Please enter a song name or number:" 
  input = gets.chomp
  songs.each do |song, index|
    if input == song || input == (index.to_i+1).to_s
      puts "Playing #{song}."
    else puts "Invalid input, please try again."
    end
  end 
end


def list(songs) 
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}" 
  end 
end 
# binding.pry 


def exit_jukebox
  puts "Goodbye"
end 


def run(songs) 
 help
 puts "Please enter a command:"
 input = gets.chomp
 while input != "exit" 
   puts "Please enter a command:"
 end 
 if input == "list" 
   list
 elsif input == "help"
   help 
 elsif input == "play"
  play

elsif  input == "exit"
  exit
 end 
end 