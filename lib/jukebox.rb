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
  puts "- list : lets you choose a song to play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
 my_songs.each{ |song, location| puts song }
end

def play(my_songs)
puts "Please enter a song name or number:"
user_response = gets.chomp
valid = false 
my_songs.each_with_index do  |song, location|
  if user_response.to_i - 1 == location 
  puts "Playing #{my_songs[location]}"
  valid = true 
  elsif (user_response == song)
  puts "Playing #{user_response}"
  valid = true 
  end
end 
puts "Invalid input, please try again" if valid == false
end


def exit_jukebox
puts "Goodbye"
end

def run(my_songs)
help
loop do 
  puts "Please enter a command:"
  input = gets.chomp
  case input 
  when 'play'
    play(my_songs)
    when 'help'
      help
      when 'list'
        list(my_songs)
        when 'exit'
          
          break
        end
      end
      exit_jukebox
    end
