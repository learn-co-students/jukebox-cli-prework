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

def list(songs)
  songs.each_with_index do |song, index|
    song_index = index+1
    puts "#{song_index}. #{song}"
  end
end


def play(songs)
puts "Please enter a song name or number:"
answer = gets.chomp

# i = 0
# while i < songs.length
# if songs.include?(answer)
#   songs.each_with_index do |song, index|
#     puts "Playing #{song}"
#   end
# elsif songs[i].include?(answer)
#   puts "Playing #{song}"
# else
#   puts "Invalid input, please try again"
# end
# i += 1
# end

songs.each_with_index do |song, index|
  if answer == song
    puts "Playing #{song}"
  elsif answer = index+1
    puts "Playing #{song}"
  end
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
  answer = gets.chomp
  if answer  == "exit"
    exit_jukebox
    break
  elsif answer == "list"
    list(songs)
  elsif answer == "play"
    play(songs)
  elsif answer == "help"
    help
  end

end
end
