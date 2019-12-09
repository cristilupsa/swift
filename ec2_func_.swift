import Foundation

func citeste(_ a: inout Float, _ b: inout Float, _ c: inout Float) {
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
              a = f_a;
              b = f_b;
              c = f_c;
            }
            else {
              print("Nu s-a putut converti c")
            }
          }
          else {
            print("Nu a citit nimic in c")
          }
        }
        else {
          print("Nu s-a putut converti b")
        }
      }
      else {
        print("Nu a citit nimic in b")
      }    
  }
  else {
    print("Nu s-a putut converti a")
  }
}
else {
  print("Nu a citit nimic in a")
} 
}

func calculeaza(_ a: Float, _ b: Float, _ c: Float, _ x1_re: inout Float, _ x1_im: inout Float, _ x2_re: inout Float, _ x2_im: inout Float)
{
let delta = b * b - 4 * a * c
if delta >= 0{
  x1_re = (-b - sqrt(delta)) / (2 * a)
  x2_re = (-b + sqrt(delta)) / (2 * a)
  x1_im = 0
  x2_im = 0
}
else{
  x1_re = -b / (2*a)
  x2_re = -b / (2*a)
  x1_im = -sqrt(-delta) / (2 * a)
  x2_im = sqrt(-delta) / (2 * a)
}
}

func tipareste(_ x1_re: Float, _ x1_im: Float, _ x2_re: Float, _ x2_im: Float){
print("x1 = \(x1_re) + \(x1_im)i")
print("x2 = \(x2_re) + \(x2_im)i")
}

var a: Float, b: Float, c: Float
a = 1
b = 2
c = 1
var x1_re, x1_im, x2_re, x2_im: Float
x1_re = 0
x1_im = 0
x2_re = 0
x2_im = 0

citeste(&a, &b, &c)
calculeaza(a, b, c, &x1_re, &x1_im, &x2_re, &x2_im)
tipareste(x1_re, x1_im, x2_re, x2_im)
