array = ARGV.map { |elem| elem.to_i}

def chart(array)
    num = array.length
    num.times do |i|
        puts "|" + "*" * (2*array[i])
    end
end
chart(array)
