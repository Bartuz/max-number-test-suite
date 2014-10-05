class Array

  def maximum_number_algorithm_1
    if self.size > 3
      raise "Unsupported elements count"
    else
      a, b, c = self[0], self[1], self[2]
      if a >= b
        if a > c
          a
        else
          c
        end
      elsif c > b
        c
      else
        b
      end
    end
  end

  def maximum_number_algorithm_2

  end

end
