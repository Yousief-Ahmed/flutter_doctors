import 'package:flutter/material.dart';
import 'package:flutter_doctors/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            children: [
              TextSpan(
                text: "By logging, you agree to our",
                style: TextStyles.font13GreyRegular ,
              ),
              TextSpan(
                text: " Terms & Conditions ",
                style: TextStyles.font13DarkBlueMedium,
              ),
              TextSpan(
                text: " and",
                style: TextStyles.font13GreyRegular.copyWith(height: 1.5.h),
              ),
              TextSpan(
                text: " Privacy Policy",
                style: TextStyles.font13DarkBlueMedium,
              ),
            ]
        )
    );
  }
}
