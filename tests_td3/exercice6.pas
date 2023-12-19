program ElementsSansDoublons;

const
  MAX = 100;

type
  Tableau = array[1..MAX] of integer;

function ObtenirElementsSansDoublons(tab: Tableau; taille: integer): Tableau;
var
  elementsSansDoublons: Tableau;
  i, j, k: integer;
  estDoublon: boolean;
begin
  k := 0;

  for i := 1 to taille do
  begin
    estDoublon := false;

    for j := 1 to k do
    begin
      if tab[i] = elementsSansDoublons[j] then
      begin
        estDoublon := true;
        Break;
      end;
    end;

    if not estDoublon then
    begin
      k := k + 1;
      elementsSansDoublons[k] := tab[i];
    end;
  end;

  ObtenirElementsSansDoublons := elementsSansDoublons;
end;

var
  tab, elementsSansDoublon: Tableau;
  taille, i: integer;

begin
  // Entr�e des donn�es
  write('Entrez la taille du tableau : ');
  readln(taille);

  write('Entrez les �l�ments du tableau : ');
  for i := 1 to taille do
    read(tab[i]);

  // Appeler la fonction pour obtenir les �l�ments sans doublons
  elementsSansDoublon := ObtenirElementsSansDoublons(tab, taille);

  // Afficher les �l�ments sans doublons
  writeln('�l�ments sans doublons : ');
  for i := 1 to Length(elementsSansDoublon) do
  begin
    if elementsSansDoublon[i] <> 0 then
      write(elementsSansDoublon[i], ' ');
  end;

  readln;
end.
