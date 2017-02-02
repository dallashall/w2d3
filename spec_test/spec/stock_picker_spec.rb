require 'stock_picker'

describe "Stock Ticker" do

  describe "#stock_picker" do

    let(:arr) { [10, 7, 5, 4, 2, 3]}

    it "the indexes that returns are in the original array" do
      expect(arr).to include(*stock_picker(arr))
    end

    it "the value at the first index is <= the value at the second index" do
      expect(arr[stock_picker(arr).first]).to be <= (arr[stock_picker(arr).last])
    end

    it "the first index is lower than the second index" do
      expect(stock_picker(arr).first).to be < stock_picker(arr).last
    end

    it "returns the indexes that give the greatest 'profit'" do
      expect(stock_picker(arr)).to eq([4, 5])
    end
  end
end
