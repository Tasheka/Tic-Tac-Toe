require './lib/board'

describe Board do
  describe '.initialize_board' do
    it 'checks if the board is printing' do
      br = Board.new
      expect(br.initialize_board).to be_truthy
    end
  end
end