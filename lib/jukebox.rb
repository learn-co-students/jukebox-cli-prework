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
  #puts out "please enter a song name or number:"
  song_to_play = gets.chomp
  #song_to_play is equal to whatever the user enters
  if (1..9).to_a.include?(song_to_play.to_i)
    #if the user enters the #s 1 - 9 (to_a takes a range of numbers and converts into an array of numbers)
    #if any of the numbers entered include the songs corresponding # (to_i turns strings into integers)
    puts "Playing #{songs[song_to_play.to_i - 1]}"
    #puts playing whatever the # that corresponds to the song name in the array turned into an integer
    # -1 because the # will be the index and u need it to be what represents the placement, not the index
  elsif songs.include?(song_to_play)
    #if the user enters a song title that is included in the songs array
    puts "Playing #{song_to_play}"
    #puts playing whichever song titled they entered
  else
    puts "Invalid input, please try again"
    #otherwise, return "invaild input" etc
  end
end


def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.chomp
  if input == "help"
    help
  elsif input == "list"
    list
  elsif input == "play"
    play
  else input == "exit"
    exit_jukebox
  end 
end
