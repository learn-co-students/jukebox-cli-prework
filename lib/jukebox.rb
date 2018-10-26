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

# def say_hello(name)
# 	"Hi #{name}!"
# end

# puts "Enter your name: "
# user_name = gets.chomp
	

# puts say_hello(user_name)


def help
	puts "I accept the following commands:\n
	– help : displays this help message\n
	– list : displays a list of songs you can play\n
	– play : lets you choose a song to play\n
	– exit: exits this program"
end

def list(songs)
	songs.each_with_index do |song, track| 
		puts "#{track + 1}. #{song}"
	end
end

def play(songs) 
	puts  "Please enter a song name or number: "
	song_input = gets.chomp
	number = song_input.to_i - 1
	
	if song_input == "exit"
		exit_jukebox
	elsif number < 0 && songs.include?(song_input)
		index = songs.index(song_input)
		puts "Playing #{songs[index]}"
	elsif number >= 0 && songs[number] != nil
		puts "Playing #{songs[number]}"
	else  
		puts "Invalid input, please try again"
	end
end

def exit_jukebox
	puts "Goodbye"
end

def run(songs)
	help
	puts "Please enter a command: "
	user_input = gets.strip

	if user_input == "help"
		run(songs)
	elsif user_input == "list"
		list(songs)
	elsif user_input == "play"
		play(songs)
	elsif user_input == "exit"
		exit_jukebox
	else
		puts "Invalid"
	end

	if user_input != "exit"
		run(songs)
	end
end





