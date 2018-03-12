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
    puts"- play : lets you choose a song to play"
    puts"- exit : exits this program"
end

def play (songs)
    new_song = nil
    array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    puts "Please enter a song name or number:"
    response = gets.chomp
    if songs.include? (response.to_s)
        puts "Playing #{response}"
    elsif array.include? (response.to_i)
        new_song = songs[response.to_i - 1]
        puts "Playing #{new_song}"
    else
        puts "Invalid input, please try again."
    end
end

def list(songs)
    songs.each_with_index do |song, i|
        puts "#{i+1}. #{song}"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    command = ""
    while command == ""
        puts "Please enter a command:"
        command = gets.chomp
        case command
            when 'list'
                list(songs)
            when 'play'
                play(songs)
            when 'help'
                help
            when 'exit'
                exit_jukebox
                break
            else
                help
        end
    end
end



