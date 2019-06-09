data = open('notas.data').readlines.map{|elem| elem.chomp}

def nota_mas_alta(row)
  nota_alta = []
	notas = row.split(",").map{|e| e.to_i}.inject(0){|x, i| x >= i ? x : i}
  nota_alta.push(notas)
  return nota_alta
end
