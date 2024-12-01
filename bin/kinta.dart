import 'dart:async'; 
import 'personne.dart'; 
import 'etudiant.dart'; 
import 'calculs.dart'; 
import 'asynchrone.dart'; 


void bonjour(String nom) {
  print("Bonjour, $nom!");
}


int addition(int a, int b) {
  return a + b;
}


double division(int a, int b) {
  if (b == 0) {
    throw Exception("Le dénominateur ne peut pas être zéro.");
  }
  return a / b;
}


Future<String> fetchData() async {
  // Simule un délai de 2 secondes avant de retourner une donnée
  await Future.delayed(Duration(seconds: 2)); 
  return "Données reçues";
}

// Classe qui gère le Stream périodique
class StreamManager {
  // Fonction qui écoute un Stream de données émis périodiquement
  void listenToStream() {
    // Création d'un stream périodique qui émet des entiers toutes les secondes
    Stream<int> periodicStream = Stream.periodic(Duration(seconds: 1), (count) => count + 1);

    
    periodicStream.listen((data) {
      print("Valeur émise : $data");

      // Si la valeur atteint 10, on annule l'écoute du stream
      if (data == 10) {
        print("Arrêt de l'écoute du stream après la valeur 10.");
      }
    });
  }
}

// Fonction récursive pour calculer la factorielle d'un nombre
int factorielle(int n) {
  if (n == 0) {
    return 1; 
  } else {
    return n * factorielle(n - 1); 
  }
}

// Fonction qui filtre les nombres pairs dans une liste
List<int> filtrerPairs(List<int> liste) {
  List<int> pairs = [];
  
  for (int nombre in liste) {
    if (nombre % 2 == 0) { 
      pairs.add(nombre); 
    }
  }
  
  return pairs;
}

void main() async {
  // 1. Déclaration de Variables
  String nom = "Kevin Florent Bandiaky";
  int age = 23;

  print("Nom: $nom");
  print("Âge: $age");

  double pi = 3.14;
  bool isFlutterAwesome = true;
  print("Valeur de pi: $pi");
  print("Flutter est génial : $isFlutterAwesome");

  final String nomComplet = "Kevin Florent Bandiaky";
  const int vitesseLumiere = 299792458;
  print("Nom complet: $nomComplet");
  print("Vitesse de la lumière : $vitesseLumiere m/s");

  // 4. Utilisation des Listes
  List<int> nombres = [1, 2, 3, 4, 5];
  print("Liste initiale : $nombres");
  nombres.add(6);
  print("Liste après ajout de 6 : $nombres");

  // 5. Utilisation des Maps
  Map<String, dynamic> etudiant = {
    "nom": "Kevin Flow",
    "age": 27,
    "classe": "Informatique"
  };
  print("Map initiale : $etudiant");
  etudiant["note"] = 85;
  print("Map après ajout de la note : $etudiant");

  bonjour("Kevin Florent Bandiaky");

  int resultatAddition = addition(5, 7);
  print("La somme de 5 et 7 est : $resultatAddition");

  //  Conditions (if, else)
  int nombre = -5;
  if (nombre > 0) {
    print("Le nombre $nombre est positif.");
  } else if (nombre < 0) {
    print("Le nombre $nombre est négatif.");
  } else {
    print("Le nombre est zéro.");
  }

  // 9. Boucles (for, while)
  print("Boucle for :");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  print("Boucle while :");
  int j = 10;
  while (j >= 1) {
    print(j);
    j--;
  }

  // 10. Gestion des Exceptions : Division
  try {
    double resultatDivision = division(10, 2);
    print("Le résultat de la division est : $resultatDivision");
  } catch (e) {
    print("Erreur : $e");
  }

  // Création et manipulation des objets Personne et Etudiant
  Personne personne1 = Personne("Kevin Florent", 23);
  print("Nom initial : ${personne1.nom}");
  print("Âge initial : ${personne1.age}");

  personne1.nom = "Kevin Bandiaky";
  personne1.age = 24;
  personne1.afficherInfos();

  Etudiant etudiant1 = Etudiant("Jean Dupont", 20, "Informatique");
  etudiant1.afficherInfos();

  //  Appel de la fonction carre depuis calculs.dart
  int nombreCarre = 5;
  int resultatCarre = carre(nombreCarre);
  print("Le carré de $nombreCarre est : $resultatCarre");

  // Opérations Asynchrones
  print("Démarrage des opérations asynchrones...");

  // Appel de fetchData
  String resultatFetch = await fetchData();
  print(resultatFetch);

  
  int somme = await calculAsync(5, 10);
  print("Le résultat de l'addition asynchrone est : $somme");

  print("Fin des opérations asynchrones.");

  // 14. Écoute du Stream
  print("Démarrage de l'écoute du stream périodique...");
  StreamManager manager = StreamManager();
  manager.listenToStream();

  //  Calcul de la factorielle
  int nombreFactorielle = 5;
  int resultatFactorielle = factorielle(nombreFactorielle);
  print("La factorielle de $nombreFactorielle est : $resultatFactorielle");

  //  Filtrage des nombres pairs
  List<int> liste = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> listePairs = filtrerPairs(liste);
  print("Les nombres pairs sont : $listePairs");
}
