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


def list(songs_array)
	songs_array.each_with_index {|song, index| puts "#{index+1}. #{song}"}
end


def play(songs_array)
	puts "Please enter a song name or number:"
	resolved = false
	choice = gets.chomp
	if songs_array.include?(choice)
		puts "Playing #{choice}"
		resolved = true
	else
		choice = choice.to_i
	end

	if resolved == false
		if choice.is_a?(Fixnum) && choice >= 1 && choice <= songs_array.size + 1
		puts "Playing #{songs_array[choice-1]}"
		resolved = true
		end
	end
	
	if resolved == false
		puts "Invalid input, please try again"
	end
end


def exit_jukebox
	puts "Goodbye"
end


def run(songs_array)
	help
	puts "Please enter a command:"
	command = gets.chomp

	if command == "exit"
		exit_jukebox
	end

	if command == "play"
		play(songs_array)
	elsif command == "list"
		list(songs_array)
	elsif command == "help"
		help
	else
		puts "That is not a valid command. Please try again."
	end
end
