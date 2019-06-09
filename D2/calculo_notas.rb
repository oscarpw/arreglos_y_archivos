
data = open('notas.data').readlines.map{|elem| elem.chomp}

def nota_mas_alta(row)
	return row.split(",").map{|e| e.to_i}.inject(0){|x, i| x >= i ? x : i}
end
