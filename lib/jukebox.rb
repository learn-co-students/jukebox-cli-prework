
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

def list(array)
    array.each_with_index do |item, index|
        puts "#{index + 1}. #{item}"
    end
end

def play(array)
    puts "Please enter a song name or number:"
    user_response = gets.chomp
    play_index = nil
    
    if user_response.to_i > 0
        play_index = user_response.to_i - 1
        if user_response.to_i > array.length
            puts "Invalid input, please try again"
        end
    else
        unless array.include? (user_response)
            puts "Invalid input, please try again"
        end
    end
    
    array.each_with_index do |item, index|
        if user_response == item || play_index == index
            puts "Playing #{item}"
        end
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    help
    puts "Please enter a command: "
    user_answer = gets.chomp
    if user_answer == "exit"
        exit_jukebox
    end
    until user_answer == "exit"
        case user_answer
            when "list"
                list(songs)
            when "play"
                play(songs)
            when "help"
                help
            when "exit"
                break
        end
        puts "Please enter a command: "
        user_answer = gets.chomp
    end
    exit_jukebox
end










