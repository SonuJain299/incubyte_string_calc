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

    
end
