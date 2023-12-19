program SupprimerDoublons;

const
  MAX = 100;

var
  tableau: array[1..MAX] of integer;
  taille, i, j, k: integer;

procedure SupprimerElementsDupliques(var tab: array of integer; var taille: integer);
var
  i, j, k: integer;
begin
  for i := 1 to taille - 1 do
  begin
    for j := i + 1 to taille do
    begin
      if (tab[i] = tab[j]) and (tab[i] <> -1) then
      begin
        
        tab[j] := -1;
      end;
    end;
  end;

 
  k := 0;
  for i := 1 to taille do
  begin
    if tab[i] <> -1 then
    begin
      k := k + 1;
      tab[k] := tab[i];
    end;
  end;
  taille := k;
end;

begin
  
  write('Entrez la taille du tableau : ');
  readln(taille);

  write('Entrez les ‚l‚ments du tableau : ');
  for i := 1 to taille do
    read(tableau[i]);

  
  SupprimerElementsDupliques(tableau, taille);

 
  writeln('Tableau sans doublons : ');
  for i := 1 to taille do
    write(tableau[i], ' ');

  readln;
end.
