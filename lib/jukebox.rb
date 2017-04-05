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

#Could have also used a HEREDOC:
# def help
# 	help = <<-HELP
# 	I accept the following commands:
# 	- help : displays this help message
# 	- list : displays a list of songs you can play
# 	- play : lets you choose a song to play
# 	- exit : exits this program
# 	HELP
# 	puts help
# end


def help
	puts "I accept the following commands:"
	puts "- help : displays this help message"
	puts "- list : displays a list of songs you can play"
	puts "- play : lets you choose a song to play"
	puts "- exit : exits this program"
end

def play(songs)
	puts "Please enter a song name or number:"
	song_to_play = gets.chomp
	if (1..9).to_a.include?(song_to_play.to_i)
		puts "Playing #{songs[song_to_play.to_i-1]}"
	elsif songs.include?(song_to_play)
		puts "Playing #{song_to_play}"
	else
		puts "Invalid input, please try again"
	end
end

def list(songs)
	songs.each_with_index do |song,i|
		puts "#{i+1}. #{song}"
	end
end

def exit_jukebox
	puts "Goodbye"
end

def run(songs)
	help
	command = ""
	while command
		puts "Please enter a command:"
		command = gets.downcase.strip
		case command
		when 'help'
			help
		when 'play'
			play(songs)
		when 'list'
			list(songs)
		when 'exit'
			exit_jukebox
			break
		else
			help
		end
	end
end
