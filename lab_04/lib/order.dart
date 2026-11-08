double orderTotal({required double unitPrice, required int quantity}) {
  if (quantity < 0) {
    throw ArgumentError('quantity must not be negative');
  }
  return unitPrice * quantity;
}
