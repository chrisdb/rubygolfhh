class Golf
  x = 0
  [
  'p.inject :*',
  '(p[0]..p[1]).select{|n| n.to_s == n.to_s.reverse}',
  'p.downcase! == p.reverse',
  %q{p.map { |t| t.sub(/(man.*)/,'hat(\1)').sub(/(dog.*)\)/,'\1(bone))').sub(/cat/,'dead') }},
  '(1..4).map{|i| p.each_cons(i).to_a}.inject :+',
  '(1..p).map{ |i|
      s="fizz" if i % 3 == 0
      s="#{s}buzz" if i % 5 == 0
      s || i
    }',
  "i = -1
    m = []
    p.map{ |j| p[i] + 1 != p[i += 1] ? m << [j] : (m[-1] << j if p[i] + 1 != p[i + 1]) }
    m.map{ |i| i * '-' }",
  "b = [1,1]
    (2..p-1).map {|i| b << b[-2] + b[-1] }
    b"
  ].map {|m| eval "def self.hole#{x += 1} p
  #{m}
  end"}
end
