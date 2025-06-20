
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

function g(y)
  g(x)=y^3-2y^2-3y+10
end


function dg(y)
  dg(y)=3y^2-4y-3
end

newton(g,dg, 1.9, 10^-4, 1)
