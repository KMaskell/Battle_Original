require './player'

describe Player do
  subject(:ophelia) { Player.new('Ophelia') }
  subject(:mercedes) { Player.new('Mercedes') }

    describe '#name' do
      it 'returns the name ' do
        expect(ophelia.name).to eq 'Ophelia'
      end
    end
  
    describe '#hit_points' do
      it 'returns the hit points' do
        expect(mercedes.hit_points).to eq described_class::DEFAULT_HIT_POINTS
      end
    end


    describe '#attack' do
      it 'damages the player' do
        expect(mercedes).to receive(:receive_damage)
        ophelia.attack(mercedes)
      end
    end
    
    describe '#receive_damage' do
      it 'reduces the player hit points' do
        expect { ophelia.receive_damage }.to change { ophelia.hit_points }.by(-10)
      end
    end
end