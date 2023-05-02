class FlameOperations {
  Map<String, int> map = {};

  Map<String, String> flameMap = {
    "F": "Friend..😊",
    "L": "Love..❤️",
    "A": "Affication..🤔",
    "M": "Marriage..💕💕",
    "E": "Enemy..😤",
    "S": "Sister..🥰"
  };
  getTheRelationShip(int count) {
    String key = removeFlameChars(count)[0];
    return flameMap[key];
  }

  int getCount(String maleName, String femaleName) {
    int count = 0;
    _getMap(maleName, true);
    _getMap(femaleName, false);

    for (String key in map.keys) {
      int val = map[key]!;
      val = val.abs();
      if (val > 0) {
        count = count + val;
      }
    }
    return count;
  }

  String removeFlameChars(int count) {
    String flameValue = "FLAMES";
    int len = flameValue.length;
    int flameRange = count % len; // settle down with in the range
    List<String> list = flameValue.split("");
    while (!list.isEmpty && list.length > 1) {
      if ((flameRange - 1) <= -1) {
        list.removeAt(list.length - 1);
        continue;
      }

      list.removeAt(flameRange - 1);
      flameRange = count % list.length;
    }
    print("Now RelationShip is $list");
    return list[0];
  }

  Map<String, int> _getMap(String name, bool plus) {
    List<String> str = name.split("");
    for (String s in str) {
      if (map.containsKey(s)) {
        int val = map[s]!;

        map[s] = plus ? ++val : --val;
      } else {
        map[s] = plus ? 1 : -1;
      }
    }
    return map;
  }

  // void main() {
  //   String name = "ravina";
  //   String name2 = "ramm";
  //   getMap(name, true);
  //   print(map);
  //   getMap(name2, false);
  //   print(map);
  //   int count = 0;

  //   for (String key in map.keys) {
  //     int val = map[key]!;
  //     val = val.abs();
  //     if (val > 0) {
  //       count = count + val;
  //     }
  //   }
  //   print("Count $count");
  // }
}
