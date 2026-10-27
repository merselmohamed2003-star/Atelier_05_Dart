class MotdepasseCourtException implements Exception {
    @override
     String toString() => 'Le mot de passe est trop court.';
}
void verifierMotdepasse(String mp) {
 if (mp.length < 6) {
   throw MotdepasseCourtException();
  }
}
void main() {
  try {
    verifierMotdepasse("abc");
    print("Mot de passe valide");
  } on MotdepasseCourtException catch (e) {
    print(e);
  }
}
