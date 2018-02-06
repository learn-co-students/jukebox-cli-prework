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
    puts 'I accept the following commands:'
    puts '- help : displays this help message'
    puts '- list : displays a list of songs you can play'
    puts '- play : lets you choose a song to play'
    puts '- exit : exits this program'
end

def list(songs)
    songs.each_with_index {|song, index| puts "#{(index+1).to_s}. #{song}"}
end

def play(songs)
#    puts 'Please enter a song name or number:'
    input = gets.chomp
    if !songs.include?(input)
        input = input.to_i
        if input > songs.length || input < 1
            puts 'Invalid input, please try again'
#            play(songs)
        else
            puts "Playing #{songs[input-1]}"
        end
    else
        puts "Playing #{input}"
    end
end

def exit_jukebox
    puts 'Goodbye'
end

def run(songs)
    help
    puts 'Please enter a command:'
    input = gets.chomp
    commands = {
        'help':help,
        'list':list(songs),
        'play':play(songs),
        'exit':exit_jukebox
    }
    if !commands.include?(input)
        puts 'Invalid input, please try again'
    end
    commands[input]
end
