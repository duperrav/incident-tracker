//Equipement class
class Equipement {
  final String nom;
  final String type;
  final String fabricant;
  final String etat;
  final DateTime mes;
  Message({
    required this.nom,
    required this.type,
    required this.fabricant,
    required this.etat,
    required this.mes,
  });
}