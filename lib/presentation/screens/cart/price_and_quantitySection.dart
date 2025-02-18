import 'package:flutter/material.dart';
import 'package:kartify_applicaion/presentation/fonts/normal_font.dart';

class PriceAndQuantitySection extends StatelessWidget {
  const PriceAndQuantitySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 08, left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NormalTextWidget(
              text: '₹ 45000',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 39, 119, 252),
            ),
            SizedBox(
              height: double.infinity,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.remove,
                      size: 16.5,
                    ),
                  ),
                  NormalTextWidget(
                    text: '1',
                    fontSize: 12.5,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 39, 119, 252),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.add,
                      size: 16.5,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}