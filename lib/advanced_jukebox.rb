#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '/home/AbrilAnchondo/jukebox-cli-online-web-prework/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '/home/AbrilAnchondo/jukebox-cli-online-web-prework/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '/home/AbrilAnchondo/jukebox-cli-online-web-prework/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '/home/AbrilAnchondo/jukebox-cli-online-web-prework/audio/Emerald-Park/04.mp3',
# "Wolf" => '/home/AbrilAnchondo/jukebox-cli-online-web-prework/audio/Emerald-Park/05.mp3',
# "Blue" => '/home/AbrilAnchondo/jukebox-cli-online-web-prework/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '/home/AbrilAnchondo/jukebox-cli-online-web-prework/audio/Emerald-Park/07.mp3'
# }

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:
       - help : displays this help message
       - list : displays a list of songs you can play
       - play : lets you choose a song to play
       - exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  my_list = []
  my_songs.each do |song, path|
    my_list << song
  end
  puts my_list  
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  
  puts "Please enter a song name:"
  user_input_name = gets.chomp
  my_songs.each do |song, value|
    if song == user_input_name
      system 'open' + value 
    elsif song != user_input_name
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
  command_input = ""
  until command_input == "exit"  do
    puts "Please enter a command:"
    command_input = gets.strip
    case
    when command_input == "list"
      list(songs)
    when command_input == "play"
      play(songs)
    when command_input == "help"
      help
    when command_input == "exit"
      exit_jukebox
    end
  end
end
