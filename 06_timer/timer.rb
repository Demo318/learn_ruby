class Timer
  attr_accessor :seconds, :time_string

  def time_string
  @hours = (@seconds / (60*60))
  @seconds = @seconds % (60*60)
  @minutes = (@seconds/ 60)
  @seconds = @seconds % 60
  result = [@hours.to_s, @minutes.to_s, @seconds.to_s]
  result.each_with_index do |x, i|
    if x.length < 2
      t_arr = ["0", x]
      result[i] = t_arr.join("")
    end
  end
  @time_string = result.join(":")
  end

  def seconds
    @seconds = 0
  end
end
