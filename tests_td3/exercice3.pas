program RotationDroiteTableau;

const
  MAX = 100;

var
  tableau: array[1..MAX] of integer;
  tableauRotation: array[1..MAX] of integer;
  taille, positions, i, newPosition: integer;

procedure RotationDroite(var tab, tabRotation: array of integer; taille, positions: integer);
var
  i, newPosition: integer;
begin
  for i := 1 to taille do
  begin
    newPosition := i - positions;
    if newPosition <= 0 then
      newPosition := taille + newPosition;
    
    tabRotation[newPosition] := tab[i];
  end;
end;

begin
  
  write('Entrez la taille du tableau : ');
  readln(taille);

  write('Entrez les ‚l‚ments du tableau : ');
  for i := 1 to taille do
    read(tableau[i]);

  write('Entrez le nombre de positions pour la rotation … droite : ');
  readln(positions);


  RotationDroite(tableau, tableauRotation, taille, positions);


  writeln('Tableau original : ');
  for i := 1 to taille do
    write(tableau[i], ' ');

  
  writeln;
  writeln('Tableau aprŠs rotation … droite : ');
  for i := 1 to taille do
    write(tableauRotation[i], ' ');

  readln;
end.
