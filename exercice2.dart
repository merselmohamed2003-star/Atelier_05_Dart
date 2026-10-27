import 'dart:io';
void main() {
  print("Entrez votre âge :");
  String? saisie = stdin.readLineSync();
  try {
  int age = int.parse(saisie!);
  print("Votre âge est : $age");
} on FormatException catch (e) {
  print("Erreur de format : ${e.message}");
}
}