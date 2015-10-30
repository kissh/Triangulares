Fibonacci sequence;

void setup() {
  size(720,640);
  colorMode(HSB, 360, 100, 100);
  // Step 2. Initialize object
  sequence = new Fibonacci();
  noLoop();
}

void draw() {
  // Step 3. Call methods on the object
  sequence.display(10);
}

class Fibonacci {
  color hue = 50;

  int compute(int n) {
    if (n == 1)
      return 0;
    if (n == 2)
      return 1;
    if ( n > 2)
      return compute(n-2) + compute(n-1);
    return -1;
  }

 void display(int terms) {
    int square_width = width / terms;
    for (int i = 0; i < terms; i++) {
      fill(hue, 100, map(compute(i+1), 0, compute(terms), 0, 100));
      rect(i*square_width, 0, square_width, 50);
    }
  }
}