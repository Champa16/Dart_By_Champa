int maxNumber(int a, int b, int c) {
  return a > b ? (a > c ? a : c) : (b > c ? b : c);
}

void main() {
  print("Largest: ${maxNumber(3, 7, 5)}");
}
