class PageController < ApplicationController
  def home
  end

  def index
  end

  def about
  end

  def info
  end

  def test
    c = params[:c].split('/').map(&:to_i)
    ranges = [] ; (0..c.size/2-1).each { |i| ranges << c[i*2..i*2+1] }
    object = FizzBuzz.new
    @result = ranges.map do |range|
      object.arr = (range[0]..range[1]).map(&:to_i)
      { input: object.arr,
        output: object.transmute! }
    end
  end
end
