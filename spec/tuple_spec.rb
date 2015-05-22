describe Tuple do
  describe 'Initialization' do
    it 'should instantiate by initializer' do
      expect { Tuple.new(1, 2, 3) }.not_to raise_error
      expect(Tuple.new(1, 2, 3)).to be_instance_of Tuple
    end

    it 'should instantiate by method' do
      expect { Tuple(1, 2, 3) }.not_to raise_error
      expect(Tuple(1, 2, 3)).to be_instance_of Tuple
    end

    it 'should instantiate by factory' do
      expect { Tuple[1, 2, 3] }.not_to raise_error
      expect(Tuple[1, 2, 3]).to be_instance_of Tuple
    end
  end

  describe 'Comparison' do
    it 'should be the same tuples' do
      expect(Tuple(1))      .to eq Tuple(1)
      expect(Tuple(1, 2))   .to eq Tuple[1, 2]
      expect(Tuple(1, 2, 3)).to eq Tuple.new(1, 2, 3)
    end

    it 'should be different' do
      expect(Tuple(1))   .not_to eq Tuple(2)
      expect(Tuple(1, 2)).not_to eq Tuple(3)
    end
  end
end
