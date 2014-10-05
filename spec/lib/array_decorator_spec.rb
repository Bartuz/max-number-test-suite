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

    context 'when supported number of elements is given' do
      subject(:array) { [1, 2, 3] }

      it 'does not raise an error' do
        expect { array.maximum_if_implementation }.not_to raise_error
      end

      context 'when all elements are different' do

        context 'when the first number is maximum' do
          subject(:array) { [3, 1, 2] }
          let(:expected_maximum) { 3 }

          it 'returns maximum number' do
            expect(array.maximum_if_implementation).to eq(expected_maximum)
          end
        end

        context 'when the middle number is maximum' do
          subject(:array) { [1, 3, 2] }
          let(:expected_maximum) { 3 }

          it 'returns maximum number' do
            expect(array.maximum_if_implementation).to eq(expected_maximum)
          end
        end

        context 'when the last number is maximum' do
          subject(:array) { [1, 2, 3] }
          let(:expected_maximum) { 3 }

          it 'returns maximum number' do
            expect(array.maximum_if_implementation).to eq(expected_maximum)
          end
        end
      end
    end

    context 'when are elements are the same' do
      subject(:array) { [1, 1, 1] }
      let(:expected_maximum) { 1 }

      it 'returns maximum number' do
        expect(array.maximum_if_implementation).to eq(expected_maximum)
      end

      it 'returns single number' do
        expect(array.maximum_if_implementation).to be_kind_of Fixnum
      end
    end

    context 'when two elements are the same' do
      subject(:array) { [1, 1, 2] }
      let(:expected_maximum) { 2 }

      it 'returns maximum number' do
        expect(array.maximum_if_implementation).to eq(expected_maximum)
      end

      it 'returns single number' do
        expect(array.maximum_if_implementation).to be_kind_of Fixnum
      end
    end
  end

  describe '#maximum_while_implementation' do

    context 'when unsupported number of elements is given' do
      subject(:no_elements_array) { [] }

      it 'raises an error' do
        expect { no_elements_array.maximum_while_implementation }.to raise_error "No elements are given"
      end
    end

    context 'when supported number of elements is given' do
      subject(:array) { [1, 2, 3] }

      it 'does not raise an error' do
        expect { array.maximum_while_implementation }.not_to raise_error
      end

      context 'when all elements are different' do

        context 'when the first number is maximum' do
          subject(:array) { [3, 1, 2] }
          let(:expected_maximum) { 3 }

          it 'returns maximum number' do
            expect(array.maximum_while_implementation).to eq(expected_maximum)
          end
        end

        context 'when the middle number is maximum' do
          subject(:array) { [1, 3, 2] }
          let(:expected_maximum) { 3 }

          it 'returns maximum number' do
            expect(array.maximum_while_implementation).to eq(expected_maximum)
          end
        end

        context 'when the last number is maximum' do
          subject(:array) { [1, 2, 3] }
          let(:expected_maximum) { 3 }

          it 'returns maximum number' do
            expect(array.maximum_while_implementation).to eq(expected_maximum)
          end
        end
      end
    end

    context 'when are elements are the same' do
      subject(:array) { [1, 1, 1] }
      let(:expected_maximum) { 1 }

      it 'returns maximum number' do
        expect(array.maximum_while_implementation).to eq(expected_maximum)
      end

      it 'returns single number' do
        expect(array.maximum_while_implementation).to be_kind_of Fixnum
      end
    end

    context 'when two elements are the same' do
      subject(:array) { [1, 1, 2] }
      let(:expected_maximum) { 2 }

      it 'returns maximum number' do
        expect(array.maximum_while_implementation).to eq(expected_maximum)
      end

      it 'returns single number' do
        expect(array.maximum_while_implementation).to be_kind_of Fixnum
      end
    end
  end
end
