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

class String
  def numeric?
    Float(self) != nil rescue false
  end
end

#Class adjustment yet to be analyzed. Found: https://mentalized.net/journal/2011/04/14/ruby-how-to-check-if-a-string-is-numeric/

def exit_jukebox
  puts "Goodbye"
end

def list(songs)
  puts songs.each_with_index {|val,index| "#{index+1}. #{val}"}
end

def help
  puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end



def play(songs)
  puts "Please enter a song name or number:"
  sel = gets.chomp
      if sel.is_a? Integer
            if sel<=songs.length
              puts "Playing #{songs[sel-1]}"
            else
              puts "Invalid input, please try again"
            end
    elsif sel.is_a? String
          if sel.numeric?
            if sel.to_iz<songs.length
              puts "Playing #{songs[sel.to_i-1]}"
            else
              puts "Invalid input, please try again"
            end
          elsif songs.include?(sel)
            puts "Playing #{sel}"
          elsif songs.include?(sel) == false
            puts "Invalid input, please try again"
          end
        end
      end


def run(songs)
  help
  command = ""
  while command != "exit"
    puts "Please enter a command:"
    command=gets.chomp
    if command == "help"
      help
      break
    elsif command == "play"
      play(songs)
      break
    elsif command == "list"
      list(songs)
      break
    else command = gets.chomp
    end
    while command =="exit"
      exit
      break
    end
  end
end
