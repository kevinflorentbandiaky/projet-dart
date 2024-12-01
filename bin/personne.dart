class Personne {
  // Attributs privés
  String _nom;
  int _age;

  // Constructeur
  Personne(this._nom, this._age);

  // Getters
  String get nom => _nom;
  int get age => _age;

  // Setters
  set nom(String nom) {
    _nom = nom;
  }

  set age(int age) {
    if (age > 0) {
      _age = age;
    } else {
      throw Exception("L'âge doit être supérieur à 0.");
    }
  }

  // Méthode pour afficher les informations
  void afficherInfos() {
    print("Nom: $_nom, Âge: $_age");
  }
}
