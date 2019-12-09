import Foundation

struct t_coef{
  var a, b, c: Float
}

struct t_solutie{
  var re, im: Float
}

struct t_solutii{
  var x1, x2: t_solutie
}

func citeste()->t_coef
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
              return t_coef(a: f_a, b: f_b, c: f_c)
            }
            else {
              //print("Nu s-a putut converti c")
              return t_coef(a:1, b:2, c:3)
            }
          }
          else {
            //print("Nu a citit nimic in c")
            return t_coef(a:1, b:2, c:3)
          }
        }
        else {
          //print("Nu s-a putut converti b")
          return t_coef(a:1, b:2, c:3)
        }
      }
      else {
        //print("Nu a citit nimic in b")
        return t_coef(a:1, b:2, c:3)
      }    
  }
  else {
    //print("Nu s-a putut converti a")
    return t_coef(a:1, b:2, c:3)
  }
}
else {
  //print("Nu a citit nimic in a")
  return t_coef(a:1, b:2, c:3)
} 
}

func calculeaza(_ coef:t_coef)->t_solutii
{
  let delta = coef.b * coef.b - 4 * coef.a * coef.c
  if delta >= 0{
    let x1 = t_solutie((-coef.b - sqrt(delta)) / (2 * coef[0])],[(-coef.b + sqrt(delta)) / (2 * coef.a),im:0)
    let x2 = t_solutie((-coef.b - sqrt(delta)) / (2 * coef.c)],[(-coef.b + sqrt(delta)) / (2 * coef.a),im:0)

    return t_solutii(x1: x1, x2: x2)
}
else{
  let x1 = t_solutie(re: -coef.b / (2 * coef.a),  -sqrt(-delta) / (2 * coef.a)],[ -coef.b / (2 * coef.a),  sqrt(-delta) / (2 * coef.a))

  let x2 = t_solutie(re: -coef.b / (2 * coef.a), im: sqrt(-delta) / (2 * coef.a))
  }
}

func tipareste(_ x1: [Float], _ x2: [Float])
{
  print("x1 = \(x.x1.re) + \(x.x1.im)i")
  print("x2 = \(x.x2.re) + \(x.x2.im)i")
}

var coef = citeste()
var sol = calculeaza(coef)
tipareste(sol)
