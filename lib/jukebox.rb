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
	puts "- help : dipslays this help message"
	puts "- list : displays a list of songs you can play"
	puts "- play : lets you choose a song to play"
	puts "- exit : exits this program"
end

def list songs
	songs.each_with_index do |song, idx|
		puts "#{idx + 1}. #{song}"
	end
end

def play songs
	puts "Please enter a song name or number."
	input = gets.chomp
	num = input.to_i
	if num <= 10 && num >= 1
		puts "Playing #{songs[num - 1]}."
	elsif songs.include?(input)
		puts "Playing #{input}."
	elsif !songs.include?(input) || (input.to_i > 10 || input.to_i < 0)
		puts "Invalid input, please try again"
	end
end


def exit_jukebox 
	puts "Goodbye"
end

def run songs
	help
	puts "Please enter a command:"
	loop do 
		input = gets.chomp
		if input == "help"
			help
		elsif input == "list"
			list(songs)
		elsif input == "play"
			play(songs)
		elsif input == "exit"
			exit 
			break
		else
			puts "Invalid command."
		end
	end
end