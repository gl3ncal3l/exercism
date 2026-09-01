class EggCounter {
  int count(int input) {
    int n = input.abs();
    int counter = 0;
    
    while (n > 0) {
      n &= (n - 1);
      counter++;
    }
    
    return counter;
  }
}