shared_examples "maximum_number_algorithm" do |method_name|

  context 'with supported number of elements' do
    subject(:array) { [1, 2, 3] }

    it 'does not raise an error' do
      expect { array.send(method_name) }.not_to raise_error
    end

    context 'with all elements different' do

      context 'with maximum number at the begining' do
        subject(:array) { [3, 1, 2] }
        let(:expected_maximum) { 3 }

        it 'returns maximum number' do
          expect(array.send(method_name)).to eq(expected_maximum)
        end
      end

      context 'with maximum number in the middle' do
        subject(:array) { [1, 3, 2] }
        let(:expected_maximum) { 3 }

        it 'returns maximum number' do
          expect(array.send(method_name)).to eq(expected_maximum)
        end
      end

      context 'with maximum number in the end' do
        subject(:array) { [1, 2, 3] }
        let(:expected_maximum) { 3 }

        it 'returns maximum number' do
          expect(array.send(method_name)).to eq(expected_maximum)
        end
      end
    end
  end

  context 'with all the same elements' do
    subject(:array) { [1, 1, 1] }
    let(:expected_maximum) { 1 }

    it 'returns maximum number' do
      expect(array.send(method_name)).to eq(expected_maximum)
    end

    it 'returns single number' do
      expect(array.send(method_name)).to be_kind_of Fixnum
    end
  end

  context 'with two the same elements' do
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
