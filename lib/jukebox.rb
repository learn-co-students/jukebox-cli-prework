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
	puts "I accept the following commands:"
	puts "- help : displays this help message"
	puts "- list : displays a list of songs you can play"
	puts "- play : lets you choose a song to play"
	puts "- exit : exits the program"
end

def list(songs)
	songs.each_with_index do |line, index|
		puts "#{index + 1} #{line}"
	end
end

def make_songs_hash(songs)
	hash = {}
	songs.each_with_index do |song, index|
		song_num = index + 1
		hash[song_num.to_s] = song
	end
	hash
end

def play(songs)
	hash = make_songs_hash(songs)
	puts "Please enter a song name or number:"
	response = gets.chomp
	c = 0
	hash.collect do |song_num, song|
		if response == song_num
			puts "Playing #{song}"
			c += 1
		end
		if response == song
			puts "Playing #{song}"
			c += 1
		end
	end
	if c == 0
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
		user_command = gets.chomp
		case
		when user_command == "list"
			list(songs)
		when user_command == "help"
			help
		when user_command == "play"
			play(songs)
		when user_command == "exit"
			exit_jukebox
			break
		else
			puts "Invalid input, please try again"
		end
	end
end
