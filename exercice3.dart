class NomVideException implements Exception {
    @override
  String toString() => 'Le nom ne doit pas être vide.';
  }

  void main() {
   String nom = 'Mohamed';
   try {
  if (nom.isEmpty) {
    throw NomVideException();
  }
      } on NomVideException catch (e) {
  print(e);
}
}
