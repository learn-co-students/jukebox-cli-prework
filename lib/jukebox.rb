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
puts  "I accept the following commands:"
puts  "- help : displays this help message"
puts  "- list : displays a list of songs you can play"
puts  "- play : lets you choose a song to play"
puts  "- exit : exits this program"
end

## decided to push the information into an array because the output was outputting for every
# element in the array. By getting the information out of the loop I can output one line at a
# time

# also trying to figure out how to get the program to accept the new input if the user inputs
# inccorect information. Currently if the user inputs incorrect information the user is prompted
#, however if he or she simply re enter information, nothing happens. They have to call the play
# method again from the list.
def play(songs)
 puts "Please enter a song name or number:"
 response = gets.chomp
 output = []
 invalid = []
 songs.each_with_index do |song, index|
 if response == song || response.to_i == index + 1
  output.push("Playing #{song}")
 else
  invalid.push("Invalid input, please try again")
 end
 end
 if output.length == 0
   puts invalid[0]
 else
   puts output
 end
end

def list(songs)
  songs_list = []
  songs.each_with_index do |song, index|
  songs_list.push((index + 1).to_s + ". " + song)
  end
  puts songs_list
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
 puts "Please enter a command:"
 help
 input = gets.chomp
 while input != "exit"
 if input == "help"
   help
   input = gets.chomp
 elsif input == "list"
   list(songs)
   input = gets.chomp
 elsif input == "play"
   play(songs)
   input = gets.chomp
 else
   input = gets.chomp
 end
 end
 if input = "exit"
   exit_jukebox
 end
end
