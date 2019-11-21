hh = {}

('a'..'z').each.with_index(1) do |v, i|
  hh[v] = i if v.index(/[aeiouy]/)
end
