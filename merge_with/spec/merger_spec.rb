require 'rspec'
require '../lib/merger'

RSpec.describe Merger do
  it 'adds two hashes together' do
    hash1 = {:a => 1}
    hash2 = {:a => 2, :b => 1}
    merge_add = Merger.merge_with(hash1, hash2) do |a,b|
      a + b
    end

    result = {:a => 3, :b => 1}
    expect(merge_add).to eq(result)
  end
end
