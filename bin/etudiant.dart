import 'personne.dart';

class Etudiant extends Personne {
  
  String classe;

  // Constructeur
  Etudiant(String nom, int age, this.classe) : super(nom, age);

  
  @override
  void afficherInfos() {
    print("Nom: $nom, Âge: $age, Classe: $classe");
  }

}
