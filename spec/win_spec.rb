require './lib/win_combinations'

describe WinCombinations do
    describe '.win_combos' do
        context 'with a winning combination should win Player X'

        it 'will have the player X be the winner' do
            player_x = [1, 2, 3]
            wn = WinCombinations.new
            expect(wn.win_combos(player_x, 'playerX')).to be_truthy
        end
    end

    describe '.win_combos' do
        context 'with a winning combination should win Player O'

        it 'will have the player O be the winner' do
            player_o = [7, 8, 9]
            wn = WinCombinations.new
            expect(wn.win_combos(player_o, 'playerO')).to be_truthy
        end
    end

    describe '.win_combos' do
        context 'with a winning combination array bigger than 3 should win Player O'

        it 'will have the player O be the winner' do
            player_o = [9, 1, 7, 8]
            wn = WinCombinations.new
            expect(wn.win_combos(player_o, 'playerO')).to be_truthy
        end
    end

    describe '.win_combos' do
        context 'with a non-winning combination should not win Player X'

        it 'will not have the player X be the winner' do
            player_x = [3, 4, 6]
            wn = WinCombinations.new
            expect(wn.win_combos(player_x, 'playerX')).not_to be_truthy
        end
    end

    describe '.win_combos' do
        context 'with a non-winning combination should not win Player O'

        it 'will not have the player O be the winner' do
            player_o = [8, 6, 4]
            wn = WinCombinations.new
            expect(wn.win_combos(player_o, 'playerO')).not_to be_truthy
        end
    end
end
