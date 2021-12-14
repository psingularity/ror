=begin
num_array = []

for i in 10..100
    if i % 5 == 0
      num_array.push(i)
    end
end

print num_array
=end

num_array = []
(10..100).step(5) {|num| num_array.push(num)}
print num_array
