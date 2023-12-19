program projectexo8td3;
 type   tab=array[1..100] of integer;  
  var m, milieu, temp, i,j, n:integer; 
      t:tab;  
      begin   
      writeln('donner la taille du tableau');   
      readln(n);   for i := 1 to n do   begin   writeln('donner t[',i, ']');  
       readln(t[i]);   end;   
       for i := 1 to n-1 do   for j:=2 to n do      
       if t[i] > t[j] then      
       temp := t[i];      
       t[i] := t[j];      
       t[j] := temp;      
       milieu:=n div 2;      
       if n mod 2 = 1 then      
       m:= t[milieu]      
       else        
       m := (t[milieu - 1] + t[milieu]) div 2;  
    writeln('La mediane est : ', m);        
    readln ;  
    end.