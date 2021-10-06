import 'dart:convert';

class PokemonModel {
  PokemonModel({
    this.name,
    this.species,
  });

  PokemonModel.tes({
    this.name,
    this.species,
  }) {
    //
  }

  factory PokemonModel.fromJson(String json) {
    Map<String, dynamic> data = jsonDecode(json);
    
    return PokemonModel(
      name: data['name'],
      species: data['species'],
    );
  }

  String? name;
  String? species;

  // factory PokemonModel.fromJson() => PokemonModel();
}
