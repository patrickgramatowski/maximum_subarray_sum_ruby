def max_sequence(arr)
  return 0 unless arr.any?{|x| x > 0}
  m = 0
  mi = arr.min(1).join.to_i
  arr = arr.map{|x| 
    m += x
    m < 0 ? m = 0 : m
    m > mi ? mi = m : mi = mi
  }
  return mi
end
