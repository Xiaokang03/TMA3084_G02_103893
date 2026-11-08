import 'package:flutter/material.dart';

import 'order.dart';

class OrderSummaryScreen extends StatefulWidget {
  final String itemName;
  final int quantity;
  final double unitPrice;

  const OrderSummaryScreen({
    super.key,
    required this.itemName,
    required this.quantity,
    required this.unitPrice,
  });

  @override
  State<OrderSummaryScreen> createState() => _OrderSummaryScreenState();
}

class _OrderSummaryScreenState extends State<OrderSummaryScreen> {
  @override
  Widget build(BuildContext context) {
    final double total = orderTotal(
      unitPrice: widget.unitPrice,
      quantity: widget.quantity,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Summary'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Item: ${widget.itemName}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Quantity: ${widget.quantity}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Total: RM ${total.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
