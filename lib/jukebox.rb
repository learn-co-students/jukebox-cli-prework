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
  puts "-help : display this help message"
  puts "-list : displays a list of songs you can play"
  puts "-play : lets you choose a song to play"
  puts "-exit : exits this program"
end

def list(songs)
  songs.each_with_index do |value,index|
    puts "#{index+1}. #{value}\n"
  end
end
  
def play(songs)
  puts "Please enter a song name or number:"
  input=gets.chomp
  boolean=false
  songs.each_with_index do |value,index|
    if input==value
    puts "Playing #{input}"
    boolean=true
  elsif input.to_i==index+1
    puts "Playing #{songs[index]}"
    boolean=true
  end
end
    if boolean==false
      puts "Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
  puts "Please enter a command:"
  input=gets.chomp
  if input=="exit"
    exit_jukebox
    break
  elsif input=="list"
    list(songs)
  elsif input=="play"
    play(songs)
  elsif input=="help"
    help
  end
end
end
  
  
