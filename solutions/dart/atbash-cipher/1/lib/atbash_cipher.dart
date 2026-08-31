class AtbashCipher {
  static const List<String> _alphabet = [
    'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
  ];
  
  bool _isNumeric(String char){
    final code = char.codeUnitAt(0);
    return (code>=48 && code <=57);
  }

  String encode(String input) {
    final buffer = StringBuffer();
    final lowercaseInput = input.toLowerCase();
    int counter = 0;
    for (int i = 0; i < lowercaseInput.length; i++) {
      final char = lowercaseInput[i];
      final index = _alphabet.indexOf(char);     
      
      if (index != -1) {
        buffer.write(_alphabet[25 - index]);
      }
      else if(_isNumeric(char)){
        buffer.write(char);
      }
      else{
        continue;
      }
      
      counter = counter + 1;
      if(counter % 5 == 0 && counter != 0){
        buffer.write(" ");
      }      
    }

    return buffer.toString().trim();
  }

  String decode(String input) {
    final buffer = StringBuffer();
    final lowercaseInput = input.toLowerCase();

    for (int i = 0; i < lowercaseInput.length; i++) {
      final char = lowercaseInput[i];
      final index = _alphabet.indexOf(char);
      
      if (index != -1) {
        buffer.write(_alphabet[25 - index]);
      } else {
        buffer.write(char.trim());
      }
    }

    return buffer.toString();
  }

}
