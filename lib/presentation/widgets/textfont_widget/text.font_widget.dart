import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartify_applicaion/presentation/colors/colors.dart';
import 'package:kartify_applicaion/presentation/fonts/normal_font.dart';

class TextFormFieldContainerWidget extends StatelessWidget {
 TextEditingController? controller = TextEditingController();
  final String title;
  final String hintText;
  final double width;
  Function(String)? onChanged;
  Iterable<String>? autofillHints;
  String? Function(String?)? validator;
  Function()? onTap;
 final TextInputType? keyboardType;

  TextFormFieldContainerWidget({
    required this.hintText,
    required this.title,
    required this.width,
    this.keyboardType,
    this.controller,
    this.autofillHints,
    this.onChanged,
    this.validator,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NormalTextWidget(text: title),
          SizedBox(
            height: 40,
            width: width,
            child: TextFormField(
              style: GoogleFonts.poppins(fontSize: 12),
              onChanged: onChanged,
              autofillHints: autofillHints,
              onTap: onTap,
              validator: validator,
              keyboardType: keyboardType,
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(
                    30,
                  )),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(width: 1, color: Colors.red),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(width: 1, color: Colors.red),
                ),
                contentPadding: EdgeInsets.all(8.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(width: 0.4, color: Colors.grey),
                ),
                hintStyle: TextStyle(fontSize: 13),
                hintText: hintText,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(width: 1, color: AppColors.greenColor),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
