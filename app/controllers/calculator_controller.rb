class CalculatorController < ApplicationController
  def index
  end

  def calculate
    input = params[:input] || ""
    begin
      @result = StringCalculator.add(input)
    rescue => e
      @error = e.message
    end
    render :index
  end
end
