
#--------------------APRESENTACAO

println("\nBem vinda ao exercicio 02 de cálculo numérico (づ ◕‿◕ )づ 
        \nEscolha entre: 
        (1) Calcular f(x)=xlog(10,x)-1=0  
        (2) Calcular g(x)=x³-9x+3=0 ")

respos_user = readline()

#----------------FUNÇAO BISSECÇÃO PARA  f(x) T^T
function bisseccao_f(E,a,b)
  if f(a)*f(b)>=0.0
    println("SOS!!!! parou aqui")
    m=a
      #print alguma coisa?
  end
  k=0
  while abs(a-b) >= E  && k<maxIter 
    m=(a+b)/2
    if f(m)==0
      break 
    elseif f(m)*f(a)>0
      a=m
    else #if f(m)*f(a)<0
      b=m
    end
    k=k+1
  end
  iter = k-1
  return  println("\nUau sua aproximação é f(x̄)≈$m e fizemos $k iterações")
end

#----------------função bissecção para g(x) T^T
function bisseccao_g(E,a,b)
  if g(a)*g(b)>=0.0
    m=a
  end
  k=0
  while abs(a-b) >= E  && k<maxIter 
    m=(a+b)/2
    if g(m)==0
      break
    elseif g(m)*g(a)>0
      a=m
    else 
      b=m
    end
    k=k+1
  end
  iter = k-1
  return  println("\nUau sua aproximação é f(x̄)≈$m e fizemos $k iterações")
end

# ----------------------- funcoes f(x) e g(x) e max de iterações
function f(x)
    f=x*log(10,x)-1
    return f
  end

function g(x)
    g=x^3-9x+3.0
    return g
end

maxIter=50 #---add user input?

#--------------escolha do usuário
#
if respos_user=="1" #           função f(x)=xlog(10,x)-1=0

  println("\nYay, ٩(•̤̀ᵕ•̤́๑)ᵎᵎᵎvamos lá, escolha entre: 
          (1) Epsilon = 10⁻2
          (2) Epsilon=10⁻7 
          (3) Observações ( ๑‾̀◡‾́)σ")
  respos_user02 = readline()

  x_1 = 2.0
  x_2 = 3.0

  if respos_user02 =="1"          #f(x) com epsilon 10^-2
    epsilon = 10^(-2)
    bisseccao_f(epsilon, x_1, x_2)

  elseif respos_user02=="2"       #f(x) com epsilon 10^-7
    epsilon = 10^(-7)
    bisseccao_f(epsilon, x_1, x_2)

  elseif respos_user02=="3"       #observacoes
    println("\nÉ notável que, com um epsilon menor a aproximação é mais exata e possui mais decimais.
            ᕕ(ᐛ)ᕗ")

  else
    println("Escolha errada ٩(๑`н´๑)۶ e a sua punição é: rodar tudo novamente e escolher entre 1, 2 e 3")
  end

elseif respos_user=="2" #          função g(x)=x³-9x+3=0
  x_3=0.0
  x_4=1.0
  println("\nOkayy (✿0ヮ0), vamos a função g(x)=x³-9x+3=0, com epsilon = 10⁻3")

  epsilon= 10^(-3)
  bisseccao_g(epsilon, x_3, x_4)


else
  println("Ops, você deve escolher entre 1 e 2 ᕙ(⇀‸↼‶)ᕗ \nInicie novamente")
end

println("\nObrigada pela participação 
        =^._.^= ∫")

