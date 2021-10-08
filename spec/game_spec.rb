require './lib/game'

describe Game do
  let(:new_game) { described_class.new(:player_1, :player_2)}
  let(:player_1) { double :player_1_name}
  let(:player_2) { double :player_2_name}

  describe '#initialize' do
    it 'starts a game with 2 players' do
      expect(new_game.players).to eq([:player_1, :player_2])    
    end
  end
end