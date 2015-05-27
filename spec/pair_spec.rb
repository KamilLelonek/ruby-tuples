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

  context 'auxilary methods'  do
    let(:pair)             { Pair(:a, :b) }
    let(:empty_pair)       { Pair() }
    let(:one_element_pair) { Pair(:an_only_element) }

    it 'should fetch first and second/last element when they exist' do
      expect(pair.first) .to eq :a
      expect(pair.last)  .to eq :b
      expect(pair.second).to eq :b
    end

    it 'should return nil if pair is empty or has only one element' do
      expect(empty_pair.first)       .to be_nil
      expect(empty_pair.last)        .to be_nil
      expect(empty_pair.second)      .to be_nil
      expect(one_element_pair.last)  .to be_nil
      expect(one_element_pair.second).to be_nil
    end

    it 'should have the same second and last element for one-length pair' do
      expect(one_element_pair)       .to have_exactly(2).items
      expect(one_element_pair.second).to eq one_element_pair.last
    end

    it 'should count pair elements' do
      expect(empty_pair.length)      .to eq 2
      expect(empty_pair.arity)       .to eq 2
      expect(one_element_pair.length).to eq 2
      expect(one_element_pair.arity) .to eq 2
      expect(Pair(1, 2).length)      .to eq Pair(:a, :b).arity
    end
  end
end
