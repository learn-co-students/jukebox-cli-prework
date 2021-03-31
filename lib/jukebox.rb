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

# def say_hello(name)
  # "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.strip
 
# puts say_hello(users_name)

def help
  puts 'I accept the following commands:'
  puts '- help : displays this help message'
  puts '- list : displays a list of songs you can play'
  puts '- play : lets you choose a song to play'
  puts '- exit : exits this program'
end

def list(songs)
  songs.each_with_index do | song, i |
    puts "#{i + 1}. #{song}"
  end
end

# Find song by index
# validate song name

def play(songs)
  puts 'Please enter a song name or number:'
  input = gets.strip
  
  # Check if input is an integer
  if input.to_i.class == Integer
    # If yes, check if integer is in range
    puts "Playing #{songs[input.to_i - 1]}"
  end

  if songs.include?(input) # Check if name is valid
    puts "Playing #{input}"
  else
    puts 'Invalid input, please try again'
  end
end