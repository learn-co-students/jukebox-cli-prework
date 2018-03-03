require_relative 'spec_helper'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapman - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

describe "CLI Jukebox" do

  context "methods" do 
    describe "#help" do 
      it "lists out the possible commands" do 
        expect { help }.to output(/^(?=.*help)(?=.*list)(?=.*play)(?=.*exit).+/m).to_stdout
      end
    end

    describe '#play' do
      it "can find a song when given a number from the user" do
          allow(self).to receive(:gets).and_return("1")
          play_songs = play(songs)
          expect { play_songs }.to output(/Phoenix - 1901/).to_stdout
        end

      it "can find a song when given a full song name" do
        allow(self).to receive(:gets).and_return("Phoenix - 1901")
        play_songs = play(songs)
        expect{ play_songs }.to output(/Phoenix - 1901/).to_stdout
      end

      it 'returns an error when given a number that does not correspond to a song' do
        allow(self).to receive(:gets).and_return("12323")
        play_songs = play(songs)
        expect { play_songs }.to output(/Invalid input, please try again/).to_stdout
      end

      it 'returns an error when given a name that does not correspond to an existing song' do
        allow(self).to receive(:gets).and_return("Blah blah foo blah")
        play_songs = play(songs)
        expect { play_songs }.to output(/Invalid input, please try again/).to_stdout
      end
    end

    describe "#list" do
      it "lists out the available songs" do  
        list_songs = list(songs)
        expect { list_songs }.to output(/Phoenix - 1901/).to_stdout
      end
    end

    describe "#exit_jukebox" do 
      it "terminates the running of the program and outputs 'Goodbye'" do
        exit_j = exit_jukebox
        expect { exit_j }.to output(/Goodbye/).to_stdout 
      end
    end

    describe '#run' do
    it "starts the program script" do
      allow(self).to receive(:gets).and_return("exit")
      run_songs = run(songs)
      expect { run_songs }.to output(/Please enter a command:/).to_stdout
    end
  end

  end

  context "with commands" do
    it "responds to 'help'" do
      self.stub(:gets).and_return("help", "exit")
      run_songs = run(songs)
      help_output = capture_stdout { run_songs }
      expect(help_output).to include("help" && "list" && "play" && "exit")
    end

    it "responds to 'exit'" do
      self.stub(:gets).and_return("exit")
      run_songs = run(songs)
      exit_output = capture_stdout { run_songs }
      expect(exit_output).to include("Goodbye")
    end
  end
end

