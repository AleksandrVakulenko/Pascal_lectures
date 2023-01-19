program records;
{$APPTYPE CONSOLE}

uses
	SysUtils;


type
   TShapeList = (Rectangle, Triangle, Circle, Ellipse, Other);
   
   
   TFigure = record
     case shape: TShapeList of
       Rectangle: (Height, Width: Real);
       Triangle: (Side1, Side2, Angle: Real);
       Circle: (Radius: integer);
       Ellipse, Other: ();
   end;
	
	Format_list = (Real_type, Char_type);
	NewRec = record 
		case format : Format_list of
			Real_type : (value : Real);
			Char_type : (buf : Real);
	end;
	
	
   TFigureNoTag = record
     case TShapeList of
       Rectangle: (Height, Width: Real);
       Triangle: (Side1, Side2, Angle: Real);
       Circle: (Radius: integer);
       Ellipse, Other: ();
   end;

var
	chr_list : Set of Char;
   Fig: TFigure;
   Fig_notag: TFigureNoTag;
   nyan : NewRec;
   i : integer;
   
begin
	writeln(sizeof(nyan));
	nyan.value := 344253452345;
	writeln(nyan.value);
	//for i := 0 to 3 do
	//	writeln(nyan.buf[i]);


	writeln(sizeof(Fig_notag));
		
	writeln('a' in chr_list);
	
	readln;



  Fig.Height := 6.32e20;
  Fig.Radius := -2;
  Fig.Width := 3;
  //default tag is zero = Rectangle
  if Fig.shape = Rectangle then begin
    Writeln('Rect H = ', Fig.Height:3:0, ' W = ', Fig.Width:3:0, ' R = ', Fig.Radius, ' S2 = ', Fig.Side2:3:0)
	//Writeln('Rect ', Fig.Height:3:0, Fig.Width:3:0, Fig.Side2:3:0);
	//Fig.shape := Circle;
	//Writeln(Fig.Radius);
  end
  else
    Writeln('not Rect');

  Fig.shape := Circle;
  if Fig.shape <> Rectangle then
    Writeln('not Rect');

  Writeln('Fig size ', SizeOf(TFigure), ' noTag size ', SizeOf(TFigureNoTag));

  
end.