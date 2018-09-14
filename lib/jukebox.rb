require 'pry'
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
  help = <<-HELP
I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
HELP
  puts help
end

def list(songs)
songs.each_with_index do |song, index|
puts "#{index + 1}. #{song}"
end
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  songs.each_with_index do |song_name, index|
    if song.to_i == index + 1
      puts "Playing #{song_name}"
    elsif song == song_name
      puts "Palying #{song_name}"
    else
      puts "Invalid input, please try again"
    end  
  end
end

def exit_jukebox 
puts "Goodbye"
end


def run(chekers)
puts help
puts "Please enter a command:"
command = gets.chomp
  if command == "list"
    list(songs)
  elsif command == "play"
    play(songs)
  elsif command == "help"
    help
  else command == "exit"
    exit_jukebox
    #break
  end
end












