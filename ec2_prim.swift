import Foundation
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
              print("a = \(f_a) b = \(f_b) c = \(f_c)")
              let delta = f_b * f_b * f_a * f_c
              var x1_re: Float, x2_re: Float, x1_im: Float, x2_im: Float
              if delta >= 0{
                x1_re = (-f_b - sqrt(delta)) / (2 * f_a)
                x2_re = (-f_b + sqrt(delta)) / (2 * f_a)
                x1_im = 0
                x2_im = 0
              }
              else{
                x1_re = -f_b / (2*f_a)
                x2_re = -f_b / (2*f_a)
                x1_re = -sqrt(delta) / (2 * f_a)
                x1_re = sqrt(delta) / (2 * f_a)
              }
              print("x1 = \(x1_re) + \(x1_im)i")
              print("x2 = \(x2_re) + \(x2_im)i")
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
