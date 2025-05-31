class Character{
    final int id;
    final String name;
    final String img;
    final String height;
    final String weight;
    final String candy;
    final List<String> type;
    final String spawn_time;

    const Character({
      required this.id,
      required this.name,
      required this.img,
      required this.height,
      required this.weight,
      required this.candy,
      required this.type,
      required this.spawn_time,
    });

    factory Character.fromJson(Map<String, dynamic> json){
      return Character(
          id: json["id"],
          name: json["name"],
          img: json["img"],
          height: json["height"],
          weight: json["weight"],
          candy: json["candy"],
          type: List<String>.from(json["type"]),
          spawn_time: json["spawn_time"],
      );
    }
}