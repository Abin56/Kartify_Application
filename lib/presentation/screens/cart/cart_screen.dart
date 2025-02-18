import 'package:flutter/material.dart';
import 'package:kartify_applicaion/presentation/colors/colors.dart';
import 'package:kartify_applicaion/presentation/fonts/normal_font.dart';
import 'package:kartify_applicaion/presentation/screens/cart/price_and_quantitySection.dart';
import 'package:kartify_applicaion/presentation/screens/cart/productDetailSection.dart';
import 'package:kartify_applicaion/presentation/widgets/textfont_widget/text.font_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: cWhite,
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.asset('assets/images/9.jpg'),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          decoration: BoxDecoration(color: cWhite
                              // border: Border.all(color: Colors.black),
                              ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ProductDetailSection(),
                              PriceAndQuantitySection(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 10,
                );
              },
              itemCount: 2,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            // height: 150,
            color: cgrey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        color: const Color.fromARGB(255, 248, 170, 170)),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: TextFormFieldContainerWidget(
                              hintText: 'Apply promo code',
                              title: '',
                              width: 200),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: const Color.fromARGB(255, 255, 224, 11)),
                            child: TextButton(
                              onPressed: () {},
                              child: NormalTextWidget(
                                text: 'Apply',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: cblack,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
