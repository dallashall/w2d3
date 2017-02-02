def stock_picker(array)
  results = {}
  array.each_index do |buy|
    next if buy == array.length - 1
    ((buy + 1)...array.length).each do |sell|
      results[array[sell] - array[buy]] = [buy, sell]
    end
  end
  results[results.keys.max]
end
