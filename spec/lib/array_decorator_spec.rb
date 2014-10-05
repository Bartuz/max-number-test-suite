require 'rspec'

describe Array do
  subject(:array) { [1, 2, 3] }

  describe '#maximum_number_algorithm_1' do

    it 'returns maximum number' do
      expect(array.maximum_number_algorithm_1).to eq(3)
    end
  end

  describe '#maximum_number_algorithm_2' do
    xit 'returns meximum number' do
      expect(array.maximum_number_algorithm_2).to eq(3)
    end
  end
end
