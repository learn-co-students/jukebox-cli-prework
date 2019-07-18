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
    puts "I accept the following commands:\n - help : displays this help message\n - list : displays a list of songs you can play\n - play : lets you choose a song to play\n - exit : exits the program"
end
    
def list(songs)
    songs.each_with_index {|val, index| puts "#{index + 1}. #{val}"}
    #displays a list of songs you can play
    
    end

def play(songs)
    #lets you choose a song from the list
    puts "Please enter a song name or number: "
    input = gets.chomp
    case input
        #I had originally made the mistake of using || instead of commas. commas are the equivalent to || in Ruby
        when "Phoenix - 1901", "1", "Playing Phoneix"
            puts "Playing Phoenix - 1901"
        when "Tokyo Police Club - Wait Up", "2", "Tokyo Police Club"
            puts "Playing Tokyo Police Club"
        when "Sufjan Stevens - Too Much", "3", "Sufjan Stevens"
            puts "Playing Sufjan Stevens"
        when "The Naked and the Famous - Young Blood", "4", "The Naked and the Famous"
            puts "Playing The Naked and the Famous"
        when "(Far From) Home - Tiga", "5", "(Far From) Home"
            puts "Playing (Far From) Home - Tiga"
        when "The Cults - Abducted", "6", "The Cults"
            puts "Playing The Cults"
        when "Phoenix - Consolation Prizes", "7", "Phoenix"
            puts "Playing Phoenix"
        when "Harry Chapin - Cats in the Cradle", "8", "Harry Chapin"
            puts "Playing Harry Chapin"
        when "Amos Lee - Keep It Loose, Keep It Tight", "9", "Amos Lee"
            puts "Playing Amos Lee"
        else
            puts "Invalid input, please try again"
            input = gets.chomp
    end
end

def exit_jukebox
    print "exit"
    print "Goodbye"
    end


def run(songs)
    puts "Please enter a command:"
    user_input = gets.chomp
    
    while user_input = gets.chomp
        case user_input
            when "help"
                help
            when "list"
                list(songs)
                user_input = gets.chomp
            when "play"
                play(songs)
                user_input = gets.chomp
            when "exit"
                exit_jukebox
                break
            else
                "Invalid input, please try again"
                print prompt
            end
        end
end

