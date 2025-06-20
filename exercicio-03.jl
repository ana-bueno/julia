#método de newton--------

function newton(f,df,x_0,epsilon, maxIter)

  k=0

  while k<=maxIter
    x = x_0 - (f(x_0)/df(x_0))
    if abs(x-x_0) < epsilon
  return ("Foram $k iterações e o valor de x é $x ")
    else 
      k = k+1
    end
  x_0 = x
  end
  return println("O método falhou após $maxIter iterações, $x_0")
end

################## funçoes
#------------teste
function f_1(y)  #f(x)=x²-6
  f_1=y^2-6
end

function df_1(y)  #f'(x)
  df_1 = 2y
end
#-----------(1)
function f_2(y)  #f(x)=x³-2x²-5
  f_2=y^3-2y^2-5
end

function df_2(y) #f'(x)
  df_2=3y^2-4y
end
#------------(2)
function f_3(y)  #f(x)=(2x)cos(2x)-(x-2)²
  f_3=(2y)cos(2y)-(y-2)^2
end

function df_3(y) #f'(x)
  df_3=2*(cos(2y)-2y*sin(2y))-2y+4  
end
#----------(3) 
function f_4(y)  #f(x)=e^x + 2⁻x+2cos(x)-6
  f_4=exp(y)+2^-y+2cos(y)-6 
end

function df_4(y) #f'(x)
  df_4=exp(y)-log(2)*2^-y-2sin(y)
end

#----------(4)
function f_5(y)  #f(x)=x²-10cos(x)
  f_5=y^2-10cos(y)
end

function df_5(y)
  df_5=2y+10sin(y)
end



############# texto escolha e input
println("\nOlá, escolha entre: 
        (1) Função teste f(x)=x²-6
        (2) F(x)=x³-2x²-5
        (3) F(x)=(2x)cos(2x)-(x-2)²
        (4) F(x)=e^x+2⁻x+2cos(x)-6
        (5) F(x)=x²-10cos(x)")

resposta_user = readline()

if resposta_user=="1" #função teste
  println("\nPara a função teste f(x)=x²-6, com x_0=1.5 e máximo de 20 iterações. \nEscolha entre:
          (1)Episilon = 10⁻3
          (2)Episilon = 10⁻5")

  resposta_user_2=readline()

    if resposta_user_2=="1"   #função teste epsilon 10^-3
    newton(f_1, df_1, 1.5, 10^-3, 20)
    elseif resposta_user_2=="2"  #função teste epsilon 10^-5
      newton(f_1, df_1, 1.5, 10^-5, 20)
    else 
      println("Escolha errada, faça tudo novamente, escolha entre 1 e 2 :D")
    end

elseif resposta_user=="2"  #função       f(x)=x³-2x²-5
  println("Para a função F(x)=x³-2x²-5, com x_0=2.5, epsilon 10⁻4 e máximo de 20 iterações, temos:")
  newton(f_2, df_2, 2.5, 10^-4, 20)

elseif resposta_user=="3" #função       f(x)=(2x)cos(2x)-(x-2)^2
  println("\nPara a função F(x)=(2x)cos(2x)-(x-2)², com epsilon 10⁻4 e máximo de 20 iterações\nEscolha:
          (1)x_0=3
          (2)x_0=4")
  println("Isso acontece pois tal função possui mais de uma raíz xD")

  resposta_user_3=readline()

  if resposta_user_3=="1"
    println("Com x_0=3")
    newton(f_3, df_3, 3.0, 10^-4, 20)
  elseif resposta_user_3=="2"
    println("Com x_0=4, temos:")
    newton(f_3, df_3, 4.0, 10^-4, 20)
  else
    println("Por favor, siga as regras >.<")
  end

elseif resposta_user=="4"  #função f(x)= exp(x)+2^-x+2cos(x)-6
  println("\nPara a função F(x)=e^x+2⁻x+2cos(x)-6, com epsilon 10⁻4 e máximo de 20 iterações\nEscolha:
          (1)x_0=-4
          (2)x_0=2")
  println("Isso acontece pois tal função possui mais de uma raíz xD")

  resposta_user_3=readline()

  if resposta_user_3=="1"
    
    println("Com x_0=-4")
    newton(f_4, df_4, -4.0, 10^-4, 20)

  elseif resposta_user_3=="2"
    println("Para a mesma função com x_0=2, temos:")

    newton(f_4, df_4, 2.0, 10^-4, 20)
  else
    println("Por favor, siga as regras >.<")
  end

elseif resposta_user=="5" #funão f(x)=x²-10cos(x)
  println("\nPara a função F(x)=x²-10cos(x), com epsilon 10⁻5 e x_0=100, com no máximo de 20 iterações, temos:")
  newton(f_5, df_5, 100.0, 10^-5, 20)


else
  println("Errado, faça de novo e escolha corretamente G-G")
end



