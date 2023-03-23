program variant1;
//Вариант 1, задание 3
  type 
      vec3d = record
        x,y,z : real;
      end;
      

  function create_vec(x,y,z: real) : vec3d;
      var 
        valu : vec3d;
      begin  
              valu.x := x; 
              valu.y := y; 
              valu.z := z; 
              create_vec := valu;
      end;
  
  function scalar_val(arg1, arg2: vec3d): real;
          begin
            scalar_val := arg1.x*arg2.x + arg1.y*arg2.y+ arg1.z*arg2.z;
          end;
  

   var 
     g,f,d, v,m,l: real;
      a,b: vec3d;
   begin
        writeln('Введите координаты 1-го вектора');
        readln(g,f,d);
        writeln;
        a := create_vec(g,f,d); 
        writeln('Введите координаты 2-го вектора');
        readln(v,m,l);
        b := create_vec(v,m,l);
        
         writeln(scalar_val(a, b):5:3);
   end.