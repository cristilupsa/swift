import Foundation

func citeste()->[Float]
{
print("a = ")
let s_o_a = readLine() // s=string, o=optional
if let s_a = s_o_a{
  let f_o_a = Float(s_a) // f=float, o=optional
  if  let f_a = f_o_a{
      print("b = ")
      let s_o_b = readLine() // s=string, o=optional
      if let s_b = s_o_b{
        let f_o_b = Float(s_b) // f=float, o=optional
        if  let f_b = f_o_b{
          print("c = ")
          let s_o_c = readLine() // s=string, o=optional
          if let s_c = s_o_c{
            let f_o_c = Float(s_c) // f=float, o=optional
            if  let f_c = f_o_c{
              return [f_a, f_b, f_c]
            }
            else {
              //print("Nu s-a putut converti c")
              return [1, 2, 1]
            }
          }
          else {
            //print("Nu a citit nimic in c")
            return [1, 2, 1]
          }
        }
        else {
          //print("Nu s-a putut converti b")
          return [1, 2, 1]
        }
      }
      else {
        //print("Nu a citit nimic in b")
        return [1, 2, 1]
      }    
  }
  else {
    //print("Nu s-a putut converti a")
    return [1, 2, 1]
  }
}
else {
  //print("Nu a citit nimic in a")
  return [1, 2, 1]
} 
}

func calculeaza(_ coef:[Float], _ x1: inout [Float], _ x2: inout [Float])
{
  let delta = coef[1] * coef[1] - 4 * coef[0] * coef[2]
  if delta >= 0{
    x1.append((-coef[1] - sqrt(delta)) / (2 * coef[0]))
    x2.append((-coef[1] + sqrt(delta)) / (2 * coef[0]))
    x1.append( 0)
    x2.append( 0)
}
else{
  x1.append( -coef[1] / (2 * coef[0]))
  x2.append( -coef[1] / (2 * coef[0]))
  x1.append( -sqrt(-delta) / (2 * coef[0]))
  x2.append( sqrt(-delta) / (2 * coef[0]))
  }
}

func tipareste(_ x1: [Float], _ x2: [Float])
{
  print("x1 = \(x1[0]) + \(x1[1])i")
  print("x2 = \(x2[0]) + \(x2[1])i")
}

func tipareste_coeficienti(_ coef: [Float])
{
  /*
  for i in coef{
    print(i)
  }
  */1
  /*
  var i: Int = 0
  while(i < 3){
    print(coef[i])
    i += 1
  }
  */2
  var i = 0
  repeat{
    print(coef[i])
    i += 1
  }  while (i < 3)
}

var x1  = [Float]()
var x2 = [Float]()

var coef = citeste()
tipareste_coeficienti(coef)
calculeaza(coef, &x1, &x2)
tipareste(x1, x2)
