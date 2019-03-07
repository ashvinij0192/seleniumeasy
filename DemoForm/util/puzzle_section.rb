class PuzzleSection

  def get_even_odd_number(arr)
    even = arr.select{ |a|   a.even?}
    odd =  arr.select { |a|  a.odd? }
    return even.length == 1 ? even.at(0) : odd.length == 1 ? odd.at(0): nil
  end
end
