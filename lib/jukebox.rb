require('pry')
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
puts"I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
songs.each_with_index{|song,index |puts "#{index+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  resp=gets.chomp
 if resp.to_i!=0 && songs[resp.to_i-1]
   puts "Playing #{songs[(resp.to_i)-1]}"
  elsif songs.include?(resp)
    puts "Playing #{resp}"
  else puts "Invalid input, please try again"
end
end
def exit_jukebox
  puts "Goodbye!"
end

def run(songs)
  help
  loop do
      

    puts "Please enter a command:"

    resp=gets.chomp
    if resp.length<1
      break
    else
      case resp
        when "help" 
          help
        when "list"
          list(songs)
        when "play"
          play(songs)
        when "exit"
          exit_jukebox
          break
      end
    end
  end
end
