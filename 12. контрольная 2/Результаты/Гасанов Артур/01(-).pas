Program vec_obj;
{$APPTYPE CONSOLE}

// Убрали uses, т.к. мы на PascalABC, и их почему-то не находит//

type
    vec3 = class //мы заменили объект на класс//
		private
			x,y,z : real;
		public
			constructor create(ax, ay, az : real); 
			function copy(arg_r : vec3): real; //Контруктор в ABC должен иметь только имя Create, либо его еще можно опускать.//
			function zero(ax, ay, az : real): real;
			function sum(arg_r : vec3) : vec3;
			function dot_product(arg_r : vec3) : real;
			procedure print_value();
    end;



var
	a,b,c : vec3;
Begin
    a.create(1,2,3);
	a.print_value;
	
    b.create(1,1,10);
	b.print_value;
	
	c := b.sum(a);
	c.print_value;
	
	writeln(a.dot_product(b):0:3);
	
	writeln('OK!')
End.
