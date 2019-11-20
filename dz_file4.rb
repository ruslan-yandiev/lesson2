hh = {}

('a'..'z').each_with_index do |v, i|
  i += 1
  hh[v] = i if v.index(/[aeiouy]/)
end
