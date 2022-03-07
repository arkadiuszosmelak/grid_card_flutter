Map<int, bool> grid = {
  0: false,
  1: false,
  2: false,
  3: false,
  4: false,
  5: false,
  6: false,
  7: false,
  8: false,
  9: false,
  10: true
};

void resetGrid() {
  for (int i = 0; i <= 10; i++) {
    grid[i] = false;
  }
}
