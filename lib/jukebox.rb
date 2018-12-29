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

def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  i=0
  my_songs.each do |x, y|
    puts "#{i}. #{x}"
    i+=1
  end
end

def play(my_songs)
  puts my_songs

  puts "Please enter a song name or number:"
  resp = gets.chomp
  if resp.to_i.to_s == resp
    if resp.to_i > my_songs.size
        puts "Invalid input, please try again"
    else
      puts "Playing #{my_songs[(resp.to_i)]}\n"
  

    end

  else
    if my_songs.include?(resp)
      puts "Playing #{my_songs}"

    else
      puts "Invalid input, please try again"

    end
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  help
  response = ""
  while response
      puts "Please enter a command:"
      response = gets.downcase.strip
      if response == "list"
        list(my_songs)
      elsif response == "play"
        play(my_songs)
      elsif response == "help"
        help
      elsif response == "exit"
        exit_jukebox
        break

      end
    end
end
