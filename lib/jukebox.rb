
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

#def say_hello(name)

#	"Hi #{name}!"
#end
#puts "Enter you name:"
#user_name = gets.chomp
#puts say_hello(user_name)


def help
 
 	puts  "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
 

end


def list(songs)
puts songs
end


def play(songs)

	puts "Please enter a song name or a number:"
input = gets.chomp 
if (1..9).to_a.index(input.to_i) != nil
    puts "Playing #{songs[input.to_i - 1]}"
  elsif songs.index(input) != nil
    puts "Playing #{input}"
else 
	puts "Invalid input, please try again"
	#binding.pry


end
end
 

 def run(songs)

 	help
 	puts "Please enter a command:"
 	command_entered = gets.chomp

while command_entered != "exit"
if command_entered == "help"
	help
	
elsif command_entered == "list"
	 list
	 
elsif command_entered == "play"
	play
	elsif command_entered == "exit"
		exit_jukebox
		
	else 
	puts "Invalid entry"
	end
	command_entered = gets.chomp

	end
	exit_jukebox
end

	


def exit_jukebox

 puts "Goodbye"
end	












