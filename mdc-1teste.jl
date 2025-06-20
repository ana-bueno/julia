using DelimitedFiles


######## calculadora de mdc


function mdc(a,b)
  k=0
  c=a%b
  print("\nO MDC de $a e $b é:")
  while a%b != 0
    c = a%b
    a = b
    b = c
    k=k+1
  end
  print(" $c \n")
end

println("\nOlá, vamos cálcular o MDC entre dois números!\n")
println("Digíte os números que devem ser cálculados com um espaço entre eles\nNo formato: a b")
a_b_0 = readdlm(IOBuffer(readline()))
a_0 = a_b_0[1,1]
b_0 = a_b_0[1,2]

print("\nVocê quer encontrar o MDC($a_0, $b_0)? Y/N: ")
resp_user_0= readline()

while resp_user_0 != "Y"
  println("\nOkay, vamos tentar novamente, digite os valores separados por espaço\nNa forma: a b")

  global a_b_0 = readdlm(IOBuffer(readline()))
  global a_0 = a_b_0[1,1]
  global b_0 = a_b_0[1,2]

  print("\nVocê quer encontrar o MDC($a_0, $b_0)? Y/N: ")
  global resp_user_0 = readline()

end

if resp_user_0 =="Y"
  mdc(a_0,b_0)
end

