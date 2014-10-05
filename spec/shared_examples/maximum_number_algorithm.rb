shared_examples "maximum_number_algorithm" do |method_name|

  context 'when supported number of elements is given' do
    subject(:array) { [1, 2, 3] }

    it 'does not raise an error' do
      expect { array.send(method_name) }.not_to raise_error
    end

    context 'when all elements are different' do

      context 'when the first number is maximum' do
        subject(:array) { [3, 1, 2] }
        let(:expected_maximum) { 3 }

        it 'returns maximum number' do
          expect(array.send(method_name)).to eq(expected_maximum)
        end
      end

      context 'when the middle number is maximum' do
        subject(:array) { [1, 3, 2] }
        let(:expected_maximum) { 3 }

        it 'returns maximum number' do
          expect(array.send(method_name)).to eq(expected_maximum)
        end
      end

      context 'when the last number is maximum' do
        subject(:array) { [1, 2, 3] }
        let(:expected_maximum) { 3 }

        it 'returns maximum number' do
          expect(array.send(method_name)).to eq(expected_maximum)
        end
      end
    end
  end

  context 'when are elements are the same' do
    subject(:array) { [1, 1, 1] }
    let(:expected_maximum) { 1 }

    it 'returns maximum number' do
      expect(array.send(method_name)).to eq(expected_maximum)
    end

    it 'returns single number' do
      expect(array.send(method_name)).to be_kind_of Fixnum
    end
  end

  context 'when two elements are the same' do
    subject(:array) { [1, 1, 2] }
    let(:expected_maximum) { 2 }

    it 'returns maximum number' do
      expect(array.send(method_name)).to eq(expected_maximum)
    end

    it 'returns single number' do
      expect(array.send(method_name)).to be_kind_of Fixnum
    end
  end
end
