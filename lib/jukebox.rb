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

def help
    puts "I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program"
end

def list(songs)
    hash ={}
    songs.each_with_index do |song,idx|
        puts (idx+1).to_s + ". " + song
    end
end

def play(songs)
    hash = {}
    songs.each_with_index do |song,idx|
        hash[idx+1] = song
    end
    
    puts "Please enter a song name or number:"
    song_request = gets.chomp
    
    songs.each_with_index do |song,idx|
        hash[idx+1] = song
    end
    
    if hash.has_key?(song_request.to_i)
        puts "playing #{hash[song_request.to_i]}"
    elsif hash.has_value?(song_request)
        puts "playing #{song_request}"
    else
        puts "Invalid input, please try again"
    end
end


def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    puts help
    puts "Please enter a command:"
    command = nil
    while command != "exit"
        command = gets.chomp
        if command == "list"
            list(songs)
            puts "Please enter a command:"
        elsif command == "play"
            play(songs)
            puts "Please enter a command:"
        elsif command == "help"
            help
            puts "Please enter a command:"
        end
    end
    exit_jukebox
end
