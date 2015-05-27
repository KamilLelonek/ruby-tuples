describe Tuple do
  describe 'Initialization' do
    it 'should instantiate by initializer' do
      expect { Tuple.new() }       .not_to raise_error
      expect { Tuple.new(1, 2, 3) }.not_to raise_error

      expect(Tuple.new())       .to be_instance_of Tuple
      expect(Tuple.new(1, 2, 3)).to be_instance_of Tuple
    end

    it 'should instantiate by method' do
      expect { Tuple() }       .not_to raise_error
      expect { Tuple(1, 2, 3) }.not_to raise_error

      expect(Tuple())       .to be_instance_of Tuple
      expect(Tuple(1, 2, 3)).to be_instance_of Tuple
    end

    it 'should instantiate by factory' do
      expect { Tuple[] }       .not_to raise_error
      expect { Tuple[1, 2, 3] }.not_to raise_error

      expect(Tuple[])       .to be_instance_of Tuple
      expect(Tuple[1, 2, 3]).to be_instance_of Tuple
    end
  end

  describe 'Comparison' do
    it 'should be the same tuples' do
      expect(Tuple())       .to eq Tuple()
      expect(Tuple(1))      .to eq Tuple(1)
      expect(Tuple(1, 2))   .to eq Tuple[1, 2]
      expect(Tuple(1, 2, 3)).to eq Tuple.new(1, 2, 3)
    end

    it 'should be different' do
      expect(Tuple(1))   .not_to eq Tuple(2)
      expect(Tuple(1, 2)).not_to eq Tuple(3)
    end
  end

  describe 'Indexing' do
    let(:tuple) { Tuple(:a, :b, :c) }

    context 'square brackets' do
      it 'should access particular elements for positive indexes' do
        expect(tuple[0]).to eq :a
        expect(tuple[1]).to eq :b
        expect(tuple[2]).to eq :c
      end

      it 'should access particular elements for negative indexes' do
        expect(tuple[-1]).to eq :c
        expect(tuple[-2]).to eq :b
        expect(tuple[-3]).to eq :a
      end

      it 'should return nil for both positive and negative indexes exceeding size' do
        expect(tuple).to have_exactly(3).items
        expect(tuple[3]) .to be_nil
        expect(tuple[-4]).to be_nil
      end
    end

    context 'auxilary methods'  do
      let(:empty_tuple)       { Tuple() }
      let(:one_element_tuple) { Tuple(:an_only_element) }

      it 'should fetch first and last element when they exist' do
        expect(tuple.first).to eq :a
        expect(tuple.last) .to eq :c
      end

      it 'should return nil if and only if tuple is empty' do
        expect(empty_tuple.first).to be_nil
        expect(empty_tuple.last) .to be_nil
      end

      it 'should have the same first and last element for one-length tuple' do
        expect(one_element_tuple)      .to have_exactly(1).item
        expect(one_element_tuple.first).to eq one_element_tuple.last
      end

      it 'should count tuple elements' do
        expect(empty_tuple.length)      .to eq 0
        expect(empty_tuple.arity)       .to eq 0
        expect(one_element_tuple.length).to eq 1
        expect(one_element_tuple.arity) .to eq 1
        expect(Tuple(1, 2, 3).length)   .to eq Tuple(:a, :b, :c).arity
      end
    end
  end
end
