import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(String input) {
    int length = input.length;
    BigInt result = BigInt.zero;
    
    for(int i = 0; i < length; i++){
      BigInt digit = BigInt.parse(input[i]);
      result += digit.pow(length);
    }
      
    return input == result.toString();
  }
}