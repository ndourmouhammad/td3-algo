program EXO9;

const
  MAX_CARACTERES = 256; // Nombre maximal de caractäres ASCII possibles

type
  TableauFrequences = array[0..MAX_CARACTERES] of integer;

var
  chaine: string;
  frequences: TableauFrequences;
  i: integer;

// ProcÇdure pour calculer les frÇquences de caractäres dans une chaåne
procedure CalculerFrequences(const chaine: string; var frequences: TableauFrequences);
var
  i: integer;
begin
  // Initialiser le tableau des frÇquences Ö zÇro
  for i := 0 to MAX_CARACTERES do
    frequences[i] := 0;

  // Parcourir la chaåne pour compter les frÇquences de chaque caractäre
  for i := 1 to Length(chaine) do
    Inc(frequences[Ord(chaine[i])]);
end;

begin
  // Demander Ö l'utilisateur de saisir une chaåne de caractäres
  write('Entrez une chaåne de caractäres : ');
  readln(chaine);

  // Calculer les frÇquences de chaque caractäre dans la chaåne
  CalculerFrequences(chaine, frequences);

  // Afficher les frÇquences de chaque caractäre
  writeln('FrÇquences de chaque caractäre dans la chaåne :');
  for i := 0 to MAX_CARACTERES do
    if frequences[i] > 0 then
      writeln('Caractäre "', Chr(i), '" : ', frequences[i], ' fois');

  // Attendre la pression d'une touche avant de fermer la console
  readln;
end.