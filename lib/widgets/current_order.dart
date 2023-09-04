import 'package:flutter/material.dart';
import 'package:restaurant_app/models/food_model.dart';
import 'package:restaurant_app/widgets/order_card.dart';
import 'package:restaurant_app/widgets/order_summary.dart';

class CurrentOrder extends StatelessWidget {
  const CurrentOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        padding: const EdgeInsets.all(5),
        color: Colors.white,
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text("Current Order"),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: currentOrder.length,
                itemBuilder: (context, index) {
                  final orderData = currentOrder[index];
                  return OrderCard(orderData: orderData);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
              ),
            ),
            const OrderSummary(),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                  minimumSize: MaterialStateProperty.all(
                      const Size(double.infinity, 30)),
                  maximumSize: MaterialStateProperty.all(
                      const Size(double.infinity, 30)),
                  fixedSize: MaterialStateProperty.all(
                      const Size(double.infinity, 30))),
              child: const Text(
                "Continue to Payment",
                style: TextStyle(fontSize: 10),
              ),
            )
          ],
        ),
      ),
    );
  }
  }
