import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutorial_app/core/theme/styes.dart';
import 'package:tutorial_app/features/onBoarding/ui/widgets/doc_logo_and_name.dart';
import 'package:tutorial_app/features/onBoarding/ui/widgets/doctor_image_and_text.dart';
import 'package:tutorial_app/features/onBoarding/ui/widgets/get_started_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const DocLogoAndName(),
                    SizedBox(
                      height: 30.h,
                    ),
                    const DoctorImageAndText(),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.w),
                        child: Column(
                          children: [
                            Text(
                              'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                              style: TextStyles.font13GreyRegular,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 30.h),
                            const GetStartedButton()
                          ],
                        ))
                  ],
                ))));
  }
}
