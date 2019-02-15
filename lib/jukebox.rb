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
  puts "I accept the follow commands"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- exit : exits this program"
end 

def list(array)
  i = 0 
  while i < array.length 
    puts "#{i + 1}. #{array[i]}"
    i+= 1 
  end 
end 

def play(array)
  puts "Please enter a song name or number:"
  answer = gets.chomp 
  array.each_with_index do |song, index| 
    if (1..9).any? {|x| x == answer.to_i}
      song_name = array[answer.to_i-1]
      puts "Playing #{song_name}"
    elsif answer == song 
      puts "Playing #{song}"
    else 
      puts "Invalid input, please try again"
    end 
  end 
end 



def exit_jukebox
  puts "Goodbye"
end 

def run(array)
  help 
  user_response = nil
  
  until user_response == "exit" do
    puts "Please enter a command:"
    user_response = gets.chomp
    
    case user_response
      when user_response == "list"
        list(array)
      when user_response == "play"
        play(array)
      when user_response == "help"
        help
      end 
  end 
  exit_jukebox
end 
