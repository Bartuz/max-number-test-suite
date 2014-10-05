describe Array do
  describe '#maximum_if_implementation' do
    it_implements 'maximum number algorithm', 'maximum_if_implementation'

    context 'when unsupported number of elements is given' do
      subject(:too_small_array) { [1] }
      subject(:too_big_array) { [1,2,3,4] }

      it 'raises an error' do
        expect { too_small_array.maximum_if_implementation }.to raise_error "Unsupported number of elements"
        expect { too_big_array.maximum_if_implementation }.to raise_error "Unsupported number of elements"
      end
    end
  end

  describe '#maximum_while_implementation' do
    it_implements 'maximum number algorithm', 'maximum_while_implementation'

    context 'when unsupported number of elements is given' do
      subject(:no_elements_array) { [] }

      it 'raises an error' do
        expect { no_elements_array.maximum_while_implementation }.to raise_error "No elements are given"
      end
    end
  end
end
