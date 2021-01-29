require './lib/validation'

describe Validation do
  describe ' .next_turn' do
    context 'The user inputted an invalid input'
    it 'checks if the input is in the correct range/valid' do
      vl = Validation.new
      expect(vl.next_turn(13, '0')).to eql('Invalid Input. Select a number between 1 and 9.')
    end

    context 'The user inputted an unavailable slot'
    it 'checks if the input is in an available slot' do
      vl = Validation.new
      $available_slots.delete(2)
      selected = 2
      expect(vl.next_turn(selected, '0')).to eql('That slot is not available. Select an available slot.')
    end

    context 'The user inputted a valid input'
    it 'checks if the input is in the correct range/valid' do
      vl = Validation.new
      expect(vl.next_turn(7, '0')).not_to eql('Invalid Input. Select a number between 1 and 9.')
    end
  end
end
