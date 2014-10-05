describe Array do

  describe '#maximum_if_implementation' do

    context 'when unsupported number of elements is given' do
      subject(:too_small_array) { [1] }
      subject(:too_big_array) { [1,2,3,4] }

      it 'raises an error' do
        expect { too_small_array.maximum_if_implementation }.to raise_error "Unsupported number of elements"
        expect { too_big_array.maximum_if_implementation }.to raise_error "Unsupported number of elements"
      end
    end

    context 'when the first number is maximum' do
      subject(:array) { [3, 1, 2] }

      it 'returns maximum number' do
        expect(array.maximum_if_implementation).to eq(3)
      end
    end

    context 'when the middle number is maximum' do
      subject(:array) { [1, 3, 2] }

      it 'returns maximum number' do
        expect(array.maximum_if_implementation).to eq(3)
      end
    end

    context 'when the last number is maximum' do
      subject(:array) { [1, 2, 3] }

      it 'returns maximum number' do
        expect(array.maximum_if_implementation).to eq(3)
      end
    end

  end

  describe '#maximum_number_algorithm_2' do
    xit 'returns meximum number' do
      expect(array.maximum_number_algorithm_2).to eq(3)
    end
  end
end
