import 'package:ap2flutter/models/Character.dart';
import 'package:ap2flutter/services/character_service.dart';
import 'package:flutter/material.dart';
import 'pages/PokemonDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  CharacterService service = CharacterService();

  late Future<List<Character>> _personagensFuture;
  late List<Character> _personagens;
  late List<Character> _personagensFiltrados;

  @override
  void initState() {
    super.initState();
    _personagensFuture = _getCharacters();
  }

  Future<List<Character>> _getCharacters() async {
    _personagens = await service.getCharacters();
    _personagensFiltrados = _personagens;
    return _personagens;
  }

  _filtroPersonagens(String filtro) {
    setState(() {
      _personagensFiltrados =
          _personagens
              .where(
                (item) =>
                    item.name.toLowerCase().contains(filtro.toLowerCase()),
              )
              .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Image.asset(
              "assets/pokelogo.png",
              height: 250,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,0,30,10),
              child: TextField(
                onChanged: (value) {
                  _filtroPersonagens(value);
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(Icons.search),
                  labelText: "Buscar Pokemon",
                ),
              ),
            ),
            FutureBuilder<List<Character>>(
              future: _personagensFuture,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,   ////item por linha
                          crossAxisSpacing: 10,  ////h
                          mainAxisSpacing: 10,   ////v
                          childAspectRatio: 0.8, ////largura/altura
                        ),
                        itemCount: _personagensFiltrados.length,
                        itemBuilder: (context, index) {
                          final personagem = _personagensFiltrados[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PokemonDetails(
                                    pokemon: personagem,
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.purpleAccent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                        personagem.img,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    personagem.name,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 8),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                }

                if (snapshot.hasError) {
                  return Text("Error");
                }

                return Center(child: CircularProgressIndicator());
              },
            ),
          ],
        ),
      ),
    );
  }
}

