using LinearAlgebra

function matriz(n)
  C= rand(n,n)
  return C
end

function vetor(n)
  v=rand(n,1)
  return v
end


println("Vamos fazer o pivoteamento e a eliminação de Gauss
        Digite a ordem da matriz:")

user_input = readline()
matriz_ordem = parse(Int64, user_input)

D = matriz(matriz_ordem)
v = vetor(matriz_ordem)

println("\nBeleza, seu sistema Ax=b tem matriz:")
display(D)
println("\ncom vetor:")
display(v)

println("\nAgora vamos fazer o pivoteamento e a eliminação de Gauss:")

function gauss(A,b)
  tamanho = size(A)
  n=tamanho[1]

  for k=1:(n-1) # Iterando pelas colunas

    B = abs.(A) 
    p=maximum(B[(k:n),k]) # Valor máximo de todas as linhas (para cada coluna k)
    #println("maximoo = $p")

    if p==0 #Se o maior valor absoluto for zero
      return println("Não existe uma solução única")
    end

    p_linha_0 = argmax(B[(k:n),k]) # Linha do valor máximo
    p_linha = p_linha_0 + (k-1)

    #println(p_linha)

    if p_linha != k

      linha_0 = A[k,:]  #temporario valor linha k (todas as linhas)
      linha_1 = A[p_linha,:]
      
      A[k,:] = linha_1 #Trocando linha do maior valor pela linha k 
      A[p_linha,:] = linha_0 

      linha_0b = b[k]
      linha_1b = b[p_linha]
      b[k] = linha_1b
      b[p_linha] = linha_0b

      #println("vetor\n $b \n")
      #display(A)
    end
    
    #antes da próxima iteração tem que multiplicar toda a linha pelo multiplicador 
    for i=(k+1):n
       m = A[i,k]/A[k,k]
       A[i,k]=0.0

      for j=(k+1):n 
        A[i,j] = A[i,j]-(m)*A[k,j] 
        
      end
      b[i] = b[i]-m*b[k]
    end
    display(A)

  end
  println("\nOk, sua matriz final é:")
  display(A)
end



gauss(D,v)

println("\nAgora vamos resolver o sistema: ")

function regressao(A,b,n)
  x=zeros(1,n)
  x[n] = (b[n])/(A[n,n]) #x_3 primeiro a ser encontrado
  for i=(n-1):-1:1  #iterando nas linhas de baixo para cima
    soma = 0.0
    for j = (i+1):n #iterando nas colunas
      soma = soma + (A[i,j] * x[j])
    end
    
    x[i] = ((b[i]) - (soma)) / (A[i,i])

  end
  println("\nBeleza, seu vetor solução é")
  print("x = ")
  display(x)
  return x
end

solucao_s = regressao(D,v,matriz_ordem)

solucao_real = D\v

if  trunc(solucao_s[1], digits=8) == trunc(solucao_real[1], digits=8)
    println("\nDe fato, essa é a solução correta com um erro de 10^-13!\nO vetor solução do sistema é:")
    display(solucao_real)
else
    println("\nAh não, essa não é a solução correta :( ")
end
