import 'package:flutter/material.dart';
import 'package:flutter_doctors/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo_low_opacity.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.14 , 0.4],
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0),
              ],
            ),
          ),
          child: Image.asset('assets/images/onBoarding_doctor.png'),
        ),
        Positioned(
            child: Text(
              "Best Doctor \n Appointment App ",
            textAlign: TextAlign.center,
            style:TextStyles.font32BlueBold.copyWith(
              height: 1.4
            ),
            ),
          bottom: 30.h,
          left: 0,
          right: 0,
        ),
      ],
    );
  }
}
