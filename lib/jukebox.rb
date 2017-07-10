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
    puts "- exit : exits this program"
end

def list(songs)
    songs.each_with_index do |song, index|
        puts "#{index +1}. #{song}"
        end
end

def play(songs)
    input = gets.strip
    if songs.include? input
        puts "Playing #{input}"
    elsif (1..songs.length).include? input.to_i 
        puts "Playing #{songs[input.to_i - 1]}"
    else
       puts "Invalid input, please try again"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    $stdout.puts "Please enter a command:"
    response_two = gets.chomp
    case response_two
        when "help"
            help
            run(songs)
        when "list"
            list(songs)
            run(songs)
        when "play"
            puts "Please enter a song name or number:"
            play(songs)
            run(songs)
        when "exit"
            exit_jukebox
        else
            puts "Invalid input, please try again"
            run(songs)
    end

end
