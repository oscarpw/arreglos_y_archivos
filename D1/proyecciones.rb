
raw_data = open('ventas_base.db').read
string_data = raw_data.split(",")
float_data = string_data.map{ |line| line.to_f}

sem1 = float_data[0..5]
sem2 = float_data[6..11]

def simulacion1(sem1, sem2)
  first = sem1.inject(0){|sum, x| sum + x}
  second = sem2.inject(0){|sum, x| sum + x}
  simulacion = (sem1*1.1) + sem2
  return simulacion
end

def simulacion2(sem1, sem2)
  first = sem1.inject(0){|sum, x| sum + x}
  second = sem2.inject(0){|sum, x| sum + x}
  simulacion = sem1 + (sem2*1.2)
  return simulacion
end

file = File.open("resultados.data", "w")
file.puts(simulacion1(sem1, sem2).to_s)
file.puts(simulacion2(sem1, sem2).to_s)
file.close
