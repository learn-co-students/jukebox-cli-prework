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
    puts "I accept the following commands: "
    puts "- help : displays this help message"
    puts "- list : diaplays a list of songs "
    puts "you can play"
    puts "- play : lets you choose a song to"
    puts "play"
    puts "- exit : exits this program"
end


def list (songs)
    songs.each_with_index do |song, index|
        puts "#{index + 1}. #{song}"
        end
end

def play (songs)
    song_array = (1..songs.length).to_a
#    binding.pry
    puts "Please enter a song name or number:"
    song_UserInput = gets.chomp
    if song_array.include?(song_UserInput.to_i)
        puts "Playing #{songs[(song_UserInput.to_i) - 1]}"
    elsif songs.include?(song_UserInput)
        puts "Playing #{song_UserInput}"
    else
        puts "Invalid input, please try again"
    end
end

def exit_jukebox

puts "Goodbye"

end

def run (songs)
    player_command = String.new
    while player_command.to_s != "exit"
    puts "Please enter a command:"
        player_command = gets.chomp
        if player_command.to_s == "help"
            help
        elsif player_command.to_s == "list"
            list(songs)
        elsif player_command.to_s == "play"
            play(songs)
        elsif player_command.to_s == "exit"
            exit_jukebox
        end
    end
end







