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
  puts " I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play 
  - exit : exits this program"
end

def list(songs_array)
  
  songs_array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  
  end
end

def play(songs_array)
  puts "Please enter asong name or number"
  answer = gets.chomp
  songs_array.each_with_index do |song, index|
    if answer == song 
      puts "Playing #{song}"
    elsif answer.to_i == index + 1
      puts "Playing #{songs_array[index]}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  help
  command = "Please enter a command:"
  puts command
  answer = gets.chomp
  if answer = "exit"
    exit_jukebox
  end
     while answer != "exit"
      puts command
        case answer
         when "list"
           list(songs)
            answer = gets.chomp
         when "play" 
            play(songs)
            answer = gets.chomp
        when "help"
             help
            answer = gets.chomp
       end
  end
end