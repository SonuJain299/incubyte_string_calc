require 'rails_helper'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns single number as integer' do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it 'adds two numbers' do
      expect(StringCalculator.add("1,2")).to eq(3)
    end

    it 'adds multiple numbers' do
      expect(StringCalculator.add("1,2,3")).to eq(6)
    end

    it 'handles newlines as delimiter' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

     it 'supports custom delimiters' do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

    it 'throws error on negative numbers' do
      expect {
        StringCalculator.add("1,-2,-3")
      }.to raise_error("negative numbers not allowed -2,-3")
    end
  end

    
end
