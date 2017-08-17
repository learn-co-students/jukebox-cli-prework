def run(songs)
    help
    choice =""
        puts "Please enter a command:"
        choice = "exit"
        help if choice == 'help'
        list(songs) if choice == 'songs'
        play(songs) if choice == 'play'
    exit_jukebox
end

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
def organizer(song,songs)
    songs.find do |t|
        t.start_with?(song) || song.to_i - 1 == songs.index(t)
    end
end

def play(songs)
    puts "Please enter a song name or number:"
    input = gets.chomp
    name = organizer(input, songs)
    if name
        puts "Playing #{name}"
    else
        puts "Invalid input, please try again"
    end
end

def list(songs)
    songs.each_with_index do |s, i|
        puts "#{i + 1}. #{s}"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def help
    puts "I accept the following commands: \n
    help : displays this help message\n
    list : displays a list of songs you can play\n
    play : lets you choose a song to play\n
    exit : exits this program\n"
end

run(songs)
