import 'package:flutter/material.dart';
import 'package:kartify_applicaion/presentation/colors/colors.dart';
import 'package:kartify_applicaion/presentation/fonts/normal_font.dart';

class ProductDetailSection extends StatelessWidget {
  const ProductDetailSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NormalTextWidget(
                  text: 'Apple',
                  fontSize: 14,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w600,
                ),
                NormalTextWidget(
                  text: 'Smart TV System',
                  fontSize: 16,
                  color: cblack,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: double.infinity, right: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.close,
                size: 16,
                color: cblack,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
