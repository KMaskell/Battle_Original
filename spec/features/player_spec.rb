require './lib/player.rb'

describe Player do
  subject(:justin) { Player.new('Justin Bieber') }
  subject(:tom) { Player.new('Tom Cruise') }

    describe '#name' do
      it 'returns the name ' do
        expect(justin.name).to eq 'Justin Bieber'
      end
    end
  
    describe '#hit_points' do
      it 'returns the hit points' do
        expect(tom.hit_points).to eq described_class::DEFAULT_HIT_POINTS
      end
    end


    # describe '#attack' do
    #   it 'damages the player' do
    #     expect(mercedes).to receive(:receive_damage)
    #     ophelia.attack(mercedes)
    #   end
    # end
    
    describe '#receive_damage' do
      it 'reduces the player hit points' do
        expect { justin.receive_damage }.to change { justin.hit_points }.by(-10)
      end
    end
end