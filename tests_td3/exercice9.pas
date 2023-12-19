program EXO9;

const
  MAX_CARACTERES = 256; // Nombre maximal de caract�res ASCII possibles

type
  TableauFrequences = array[0..MAX_CARACTERES] of integer;

var
  chaine: string;
  frequences: TableauFrequences;
  i: integer;

// Proc�dure pour calculer les fr�quences de caract�res dans une cha�ne
procedure CalculerFrequences(const chaine: string; var frequences: TableauFrequences);
var
  i: integer;
begin
  // Initialiser le tableau des fr�quences � z�ro
  for i := 0 to MAX_CARACTERES do
    frequences[i] := 0;

  // Parcourir la cha�ne pour compter les fr�quences de chaque caract�re
  for i := 1 to Length(chaine) do
    Inc(frequences[Ord(chaine[i])]);
end;

begin
  // Demander � l'utilisateur de saisir une cha�ne de caract�res
  write('Entrez une cha�ne de caract�res : ');
  readln(chaine);

  // Calculer les fr�quences de chaque caract�re dans la cha�ne
  CalculerFrequences(chaine, frequences);

  // Afficher les fr�quences de chaque caract�re
  writeln('Fr�quences de chaque caract�re dans la cha�ne :');
  for i := 0 to MAX_CARACTERES do
    if frequences[i] > 0 then
      writeln('Caract�re "', Chr(i), '" : ', frequences[i], ' fois');

  // Attendre la pression d'une touche avant de fermer la console
  readln;
end.