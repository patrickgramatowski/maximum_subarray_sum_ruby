def permutations(str)
  str.split(//).permutation.map(&:join).uniq
end
