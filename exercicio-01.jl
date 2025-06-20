#          APRESENTACAO

println("Olá, seja bem vinda à calculadora de raízes (づ ◕‿◕ )づ vamos começar? \"YES!\" ")

start = readline()

while start != "YES!"
  #if start != "YES!"
    println("Resposta errada (╯°□°)╯")
    println("Tente novamente T^T, vamos começar? \"YES!\" ")
  global start = readline()
end

#          USER INPUT NUMEROS EQ QUADRATICA
println("\nBeleza! *--* digite os elementos da sua equação quadrática. \nVamos utilizar a forma: ax²+bx+c=0")

print("\na= ")
a_0 = readline()
print("b= ")
b_0 = readline()
print("c= ")
c_0 = readline()

println("\nAi simm, sua equação é: ",a_0,"x²+",b_0,"x+",c_0,"=0 (✦ ‿ ✦)? \"Y/N\" ")
respos = readline()

#         CORRECAO USER INPUT SE NECESSARIO
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
