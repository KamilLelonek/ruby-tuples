describe Pair do
  describe 'Initialization' do
    context 'initializer' do
      it 'should instantiate with multiple arguments' do
        expect { Pair.new() }    .not_to raise_error
        expect { Pair.new(1, 2) }.not_to raise_error

        expect(Pair.new())    .to be_instance_of Pair
        expect(Pair.new(1, 2)).to be_instance_of Pair
      end

      it 'should not instantiate with more than 2 arguments' do
        expect { Pair.new(1, 2, 3) }.to raise_error
      end

      it 'should instantiate with an array' do
        expect { Pair.new([]) }    .not_to raise_error
        expect { Pair.new([1, 2]) }.not_to raise_error

        expect(Pair.new([]))    .to be_instance_of Pair
        expect(Pair.new([1, 2])).to be_instance_of Pair
      end

      it 'should not instantiate  with an arra with more than 2 arguments' do
        expect { Pair.new([1, 2, 3]) }.to raise_error
      end
    end

    context 'method' do
      it 'should instantiate by method' do
        expect { Pair() }    .not_to raise_error
        expect { Pair(1, 2) }.not_to raise_error

        expect(Pair())    .to be_instance_of Pair
        expect(Pair(1, 2)).to be_instance_of Pair
      end

      it 'should not instantiate by method with more than 2 arguments' do
        expect { Pair[1, 2, 3] }.to raise_error
      end
    end

    context 'factory' do
      it 'should instantiate by factory' do
        expect { Pair[] }    .not_to raise_error
        expect { Pair[1, 2] }.not_to raise_error

        expect(Pair[])    .to be_instance_of Pair
        expect(Pair[1, 2]).to be_instance_of Pair
      end

      it 'should not instantiate by factory with more than 2 arguments' do
        expect { Pair[1, 2, 3] }.to raise_error
      end
    end
  end
end
