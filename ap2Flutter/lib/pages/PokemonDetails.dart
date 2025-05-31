import 'package:ap2flutter/models/Character.dart';
import 'package:flutter/material.dart';

class PokemonDetails extends StatelessWidget {
  final Character pokemon;

  const PokemonDetails({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /////NOME DO POKEMON
                Text(
                  pokemon.name,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                ///////ID DENTRO DO CONTAINER
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red[600],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '#${pokemon.id.toString().padLeft(3, '0')}',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            ///////TIPO DO POKEMON
            ///PERGUNTAR DUVIDA **************************************
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red[600],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Text(
                    pokemon.type.join(', '),
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            ////////IMAGEM DO POKEMON
            child: Image.network(
              pokemon.img,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              //////SEGUNDO CONTAINER BRANCO
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///////DETALHES DO POKEMON
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "• Altura: ",
                            style: TextStyle(fontSize: 15, color: Colors.black26, fontWeight: FontWeight.bold)
                          ),
                          TextSpan(
                            text: pokemon.height,
                            style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                          )
                        ]
                      )
                    ),
                    Text.rich(
                        TextSpan(
                            children: [
                              TextSpan(
                                  text: "• ItemEvo: ",
                                  style: TextStyle(fontSize: 15, color: Colors.black26, fontWeight: FontWeight.bold)
                              ),
                              TextSpan(
                                text: pokemon.candy,
                                style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                              )
                            ]
                        )
                    ),
                    Text.rich(
                        TextSpan(
                            children: [
                              TextSpan(
                                  text: "• Peso: ",
                                  style: TextStyle(fontSize: 15, color: Colors.black26, fontWeight: FontWeight.bold)
                              ),
                              TextSpan(
                                text: pokemon.weight,
                                style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                              )
                            ]
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Text.rich(
                          TextSpan(
                              children: [
                                TextSpan(
                                    text: "• Tempo de Spawn: ",
                                    style: TextStyle(fontSize: 15, color: Colors.black26, fontWeight: FontWeight.bold)
                                ),
                                TextSpan(
                                  text: pokemon.spawn_time,
                                  style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                                )
                              ]
                          )
                      ),
                    ),
                    /////ICONE POKEMON FINAL
                    Center(
                        child: Image.asset("assets/pokelogo.png", height: 100,)
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


class teste extends StatelessWidget {
  final Character pokemon;
  const teste({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red[600],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Text(
            pokemon.type.join(', '),
            style: TextStyle(fontSize: 18, color: Colors.white),
          )
        ],
      ),
    );
  }
}


