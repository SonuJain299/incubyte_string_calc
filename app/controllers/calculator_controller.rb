class CalculatorController < ApplicationController
  def index
    @input = ""
    puts @result
    @error = nil
  end

  def calculate
    input = params[:input] || ""
    begin
      @result = StringCalculator.add(input)
      puts "Calulation result: #{@result}" # Debugging output
    rescue => e
      @error = e.message
    end
    render :index
  end
end
