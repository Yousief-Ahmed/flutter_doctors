import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_doctors/core/helpers/spacing.dart';
import 'package:flutter_doctors/core/theming/styles.dart';
import 'package:flutter_doctors/core/widgets/app_text_button.dart';
import 'package:flutter_doctors/features/login/logic/login_cubit.dart';
import 'package:flutter_doctors/features/login/widgets/dont_have_account_text.dart';
import 'package:flutter_doctors/features/login/widgets/email_and_password.dart';
import 'package:flutter_doctors/features/login/widgets/login_bloc_listener.dart';
import 'package:flutter_doctors/features/login/widgets/terms_and_conditions_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "LoginScreen",
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GreyRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyles.font14BlueRegular,
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                        buttonText: "Login",
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {
                          validateThenDoLogin(context);
                        }
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(60),
                    const DontHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void  validateThenDoLogin(BuildContext context){
    if (context.read<LoginCubit>().formKey.currentState!.validate()){
     context.read<LoginCubit>().emitLoginStates();
    }
  }
}
