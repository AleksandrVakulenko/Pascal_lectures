Program vec_obj;
{$APPTYPE CONSOLE}

//�������, ������ ��� ������ �� �� ���������//

const
	Size_N = 190000000;
type
    arr700mb = array [0..Size_N] of integer;
    
    Array_obj = class // ������ ������ �� ����� //
		private
			data : arr700mb;
		public
			constructor create(data: arr700mb);
			destructor del();
    end;



var
	a : Array_obj;
Begin
	a.create_random;
	a.create_random;
	
	a.del;
	a.del;
	
	writeln('OK!')
End.
