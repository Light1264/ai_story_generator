import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_theme.dart';
import '../../controller/change_password_controller.dart';
import '../../widgets/app_custom_button.dart';
import '../../widgets/auth_textfield.dart';
import 'sign_in.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    final _changePasswordController = Get.put(ChangePasswordController());
    return Scaffold(
      backgroundColor: AppTheme.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Image.asset(
                  "assets/images/logo.png",
                  scale: 4,
                ),
              ),
              const SizedBox(
                height: 99,
              ),
              Text(
                "Change Password",
                style: GoogleFonts.abhayaLibre(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Input your old and new password",
                textAlign: TextAlign.center,
                style: GoogleFonts.abhayaLibre(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              AuthTextField(
                textFieldController:
                    _changePasswordController.oldPasswordController,
                labelText: "Old password",
                hintText: "Input Old password",
              ),
              const SizedBox(
                height: 40,
              ),
              AuthTextField(
                textFieldController:
                    _changePasswordController.newPasswordController,
                labelText: "New password",
                hintText: "Input new password",
              ),
              const SizedBox(
                height: 90,
              ),
              AppButton(
                buttonText: "Change Password",
                onPressed: () {
                  Get.off(const SignInScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
