import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/app_theme.dart';
import '../../controller/signUp_controller.dart';
import '../../widgets/app_custom_button.dart';
import '../../widgets/auth_textfield.dart';
import 'sign_in.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _signUpController.formKey,
              child: Column(
                children: [
                  Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                    scale: 4,
                  ),
                ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Create an account",
                    style: GoogleFonts.abhayaLibre(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Are you new here, inout your details\nto get start your stories journey",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.abhayaLibre(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AuthTextField(
                    textFieldController: _signUpController.fullNameController,
                    labelText: "Username",
                    hintText: "Input your username",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AuthTextField(
                    textFieldController: _signUpController.emailController,
                    labelText: "Email",
                    hintText: "username@gmail.com",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AuthTextField(
                    textFieldController: _signUpController.passwordController,
                    labelText: "Password",
                    hintText: "Input password",
                    isObsure: _signUpController.isObscurePassword,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _signUpController.isObscurePassword =
                              !_signUpController.isObscurePassword;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Icon(
                          _signUpController.isObscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: _signUpController.isObscurePassword
                              ? Colors.grey
                              : AppTheme.primaryColor,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AuthTextField(
                    textFieldController:
                        _signUpController.confirmPasswordController,
                    labelText: "Confirm password",
                    hintText: "Confirm password",
                    isObsure: _signUpController.isObscureConfirmPassword,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _signUpController.isObscureConfirmPassword =
                              !_signUpController.isObscureConfirmPassword;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Icon(
                          _signUpController.isObscureConfirmPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: _signUpController.isObscureConfirmPassword
                              ? Colors.grey
                              : AppTheme.primaryColor,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  AppButton(
                    buttonText: "Sign Up",
                    onPressed: () {
                      _signUpController.validation();
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: GoogleFonts.abhayaLibre(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.off(const SignInScreen());
                        },
                        child: Text(
                          "Sign In",
                          style: GoogleFonts.abhayaLibre(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppTheme.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
