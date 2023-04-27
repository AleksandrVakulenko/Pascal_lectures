Program vec_obj;
{$APPTYPE CONSOLE}

// ������ uses, �.�. �� �� PascalABC, � �� ������-�� �� �������//

type
    vec3 = class //�� �������� ������ �� �����//
		private
			x,y,z : real;
		public
			constructor create(ax, ay, az : real); 
			function copy(arg_r : vec3): real; //���������� � ABC ������ ����� ������ ��� Create, ���� ��� ��� ����� ��������.//
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
