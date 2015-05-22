describe Tuple do
  describe 'Tuple initialization' do
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
end
