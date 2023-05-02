Map<String, int> map = {};
Map<String, int> getMap(String name, bool plus) {
  List<String> str = name.split("");
  for (String s in str) {
    if (map.containsKey(s)) {
      int val = map[s]!;

      map[s] = plus ? val++ : val--;
    } else {
      map[s] = plus ? 1 : -1;
    }
  }
  return map;
}

void main() {
  String name = "ravina";
  String name2 = "ramm";
  getMap(name, true);
  getMap(name2, false);
  print(map);
}
