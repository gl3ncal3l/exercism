class Etl {
  Map<String, int> transform(Map<String, List<String>> input) {
    Map<String, int> result = {};
    input.forEach((key, value) {
      for(String letter in value)  {
        result[letter.toLowerCase()] = int.parse(key);
      }
    });
    
    return result;
  }
}