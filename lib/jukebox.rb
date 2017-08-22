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
    songs.each_with_index do |song, idx|
        puts "#{idx + 1}. #{song}"
    end
end

def play(songs)
    user_response = gets.chomp
    if user_response.to_i < songs.length && user_response.to_i > 0
        puts "Playing #{songs[user_response.to_i - 1]}"
    elsif songs.include?(user_response)
        puts "Playing #{user_response}"
    else
        puts "Invalid input, please try again"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    help
    puts "Please enter a command:"
    user_response = gets.chomp
    while true
        if user_response == "help"
            help
            user_response = gets.chomp
        elsif user_response == "list"
            list(songs)
            user_response = gets.chomp
        elsif user_response == "play"
            puts "Please enter a song name or number:"
            play(songs)
            user_response = gets.chomp
        elsif user_response == "exit"
            exit_jukebox
            break
        else
            puts "Invalid input, please try again"
            user_response = gets.chomp
        end
    end
end
