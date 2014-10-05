class Array
  def maximum_if_implementation
    if size != 3
      raise "Unsupported number of elements"
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

  def maximum_while_implementation
    if size < 1
      raise "No elements are given"
    else
      heighest = self[0]
      i = 1
      while i < size do
        heighest = self[i] if self[i] >  heighest
        i += 1
      end
      heighest
    end
  end
end
