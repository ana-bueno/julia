using DelimitedFiles

#-----------------Apresentação, escolha da conta a ser feita
println("Olá, seja bem vinda ao exercício de cálculo numérico (づ ◕‿◕ )づ vamos começar?
        Você quer fazer: 
        (1) Cálculo de raízes de equações quadráticas;
        (2) Cálculo de distância euclidiana entre dois vetores;")

resposta_apresen = readline()

if resposta_apresen == "1"

  ################ OPÇÃO RAIZES EQ QUADRATICA

  println("Yay, bem vinda à calculadora de raízes (>.< ✿) vamos começar? \"YES!\" ")
  start = readline()

  while start != "YES!"
      #if start != "YES!"
      println("Resposta errada (╯°□°)╯")
      println("Tente novamente T^T, vamos começar? \"YES!\" ")
    global start = readline()
  end

  ###### USER INPUT NUMEROS EQ QUADRATICA
  println("\nBeleza! *--* digite os elementos da sua equação quadrática. \nVamos utilizar a forma: ax²+bx+c=0")

  print("\na= ")
  a_0 = readline()
  print("b= ")
  b_0 = readline()
  print("c= ")
  c_0 = readline()

  println("\nAi simm, sua equação é: ",a_0,"x²+",b_0,"x+",c_0,"=0 (✦ ‿ ✦)? \"Y/N\" ")
  respos = readline()

  ########### CORRECAO USER INPUT SE NECESSARIO
  while respos != "Y"
    println("\nOh não!, vamos tentar de novo: (❛‿っ❛) \nDigite os elementos da sua equação. \nAtenção ( ╯°□°)╯ vamos utilizar a forma: ax²+bx+c")
    print("\na= ")
    global a_0 = readline()
    print("b= ")
    global b_0 = readline()
    print("c= ")
    global c_0 = readline()

    println("\nSua equação é: ",a,"x²+",b,"x+",c,"=0 (✦ ‿ ✦)? \"Y/N\" ")
    global respos = readline()
  end

  #         CONVERSAO USER INPUT PARA FLOAT
  a = parse(Float64, a_0)
  b = parse(Float64, b_0)
  c = parse(Float64, c_0)

  println("YAY! o(〃＾▽＾〃)o \nEntão suas raízes são...\n")

  #          CALCULO RAIZES
  delta = b^2 -4*a*c

  if delta<0
    println("Eitaa, sua equação não possui raízes reais \n(╥_╥)")
  elseif delta==0
    x_0 = (-b)/(2*a)
    println("Uhul, sua equação possui apenas uma raíz: \n x=",x_0, "\n (˶ᵔ ᵕ ᵔ˶)")
  else
    x_1 =(-b+sqrt(delta))/(2*a)
    x_2 =(-b-sqrt(delta))/(2*a)
    println("UAU, sua equação possui duas raízes: x = ",x_1," e x = ", x_2,".\n(„•u•„)")
  end

  println("\nObrigada pela participação \n                         ≽^•⩊ •^≼ ")

  ####### FIM CALC DE EQUAÇÃO QUADRÁTICA

elseif resposta_apresen=="2"

  ######### OPCAO DISTANCIA EUCLIDIANA

  println("\nOk!! vamos lá (ﾉ◕ヮ◕)ﾉ
          \nInsira dois vetores para encontrar a distância euclidiana entre eles: 
          \n~~~~ATENÇÃO @(・0・)@: \nInsira cada vetor por vez, adicionando apenas as coordenadas\nSeparadas por espaços, no formato: \"a b c n\"")

  ###### USER INPUT VETOR1 E VETOR2
  print("\nv1= ")
  v1_user = readdlm(IOBuffer(readline()))

  print("v2= ")
  v2_user = readdlm(IOBuffer(readline()))



  ####### CONFIRMACAO USER INPUT VETORES CORRETOS
  println("\nYay! seus vetores são v1=$v1_user e v2=$v2_user ? Y/N")
  respos_dist = readline()

  ####### CORRECAO USER INPUT SE NECESSARIO
  while respos_dist != "Y"
    println("\nOh não! (ᗒᗣᗕ)՞ vamos tentar novamente: \nDigite as coordenadas do seus vetores com espaço entre elas:")
    print("\nv1= ")
    global v1_user = readdlm(IOBuffer(readline()))

    print("v2= ")
    global v2_user = readdlm(IOBuffer(readline()))

    println("Seus vetores são v1= $v1_user e v2= $v2_user ? Y/N")
    global respos_dist = readline()
  end

  ##### FUNCAO DISTANCIA CALCULO
  function distancia_euclidiana(v1, v2)
      v3 = v2-v1
      v4 = v3.^2 
      distancia_final = sqrt(sum(v4))
  end

  ####### RESULTADO FUNCAO DISTANCIA
  if respos_dist == "Y"
    distancia_final = distancia_euclidiana(v1_user, v2_user)
    println("\nUhull (つ≧▽≦)つ a distância euclidiana entre os vetores v1= $v1_user e v2= $v2_user é: $distancia_final")
  end

  println("\nObrigada pela participação \n                         ≽^•⩊ •^≼ ")


  #######
else
  println("Resposta errada (ง•̀_•́)ง \nComeçe de novo e escolha entre 1 e 2 ٩(๑`н´๑)۶")
end
