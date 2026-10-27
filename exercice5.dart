import 'dart:io';
class NombreNegatifException implements Exception {
   @override
    String toString() => 'Le nombre ne doit pas être négatif.';
}
void main() {
  print("Entrez un nombre :");
try {
    int nombre = int.parse(stdin.readLineSync()!);

 if (nombre < 0) {
      throw NombreNegatifException();
    }
     print("Le carré du nombre est : ${nombre * nombre}");
      } on NombreNegatifException catch (e) {
         print(e);
          } on FormatException catch (e) {
             print("Erreur de format : ${e.message}");
              } finally {
                 print("Fin du programme");
  }
}
