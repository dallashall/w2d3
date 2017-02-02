require 'enumerables'

RSpec.describe Array do

  describe "#uniq" do
    let(:arr) { [1, 2, 1, 3, 3]}

    it "remove duplicates" do
      expect(arr.uniq).to eq([1,2,3])
    end

    it "returns in the order they appear" do
      expect(arr.uniq).not_to eq([3, 2, 1])
      expect(arr.uniq).to eq([1, 2, 3])
    end
  end

  describe "#two_sum" do

    let(:arr) { [-1, 0, 2, -2, 1]}

    it "returns the index pairs of numers that sum to zero" do
      expect(arr.two_sum).to include([2,3],[0,4])
    end

    it "return the index pairs in order" do
      expect(arr.two_sum).to eq([[0,4],[2,3]])
    end
  end

  describe "#my_transpose" do

    let(:matrix) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }
    let(:matrix_transposed) { [[0, 3, 6], [1, 4, 7], [2, 5, 8]] }

    it "swaps columns and rows" do
      expect(matrix.my_transpose).to eq(matrix_transposed)
    end
  end
end
