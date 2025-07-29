import 'package:atria_assignment_sambhav07/core/commons/widgets/custom_text_button.dart';
import 'package:atria_assignment_sambhav07/core/commons/widgets/text_field.dart';
import 'package:atria_assignment_sambhav07/core/constants/text.dart';
import 'package:atria_assignment_sambhav07/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class MobileLogin extends StatelessWidget {
  const MobileLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background image
          Positioned.fill(
            child: Image.asset("assets/images/mobile.png", fit: BoxFit.cover),
          ),

          // form
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Column(
              children: [
                Image.asset("assets/images/logo2.png"),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                Container(
                  height: 435,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                    color: AppPallete.whiteColor,
                    borderRadius: BorderRadius.circular(29),
                    boxShadow: [
                      BoxShadow(
                        color: AppPallete.textColor.withValues(alpha: 0.08),
                        blurRadius: 24,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              TextsFile.phoneWelcomeText,
                              style: TextStyle(
                                fontSize: 24, 
                                fontWeight: FontWeight.w700,
                                color: AppPallete.textColor,
                                fontFamily: 'Mulish',
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(height: 10),
                            Text(
                              TextsFile.phoneLoginText,

                              style: TextStyle(
                                fontSize: 14,
                                color: AppPallete.textColorGrey2,
                                height: 1.6,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.start,
                              softWrap: true,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        SizedBox(
                          child: CustomTextField(
                            labelText: "Enter Phone Number",
                          ),
                        ),
                        SizedBox(height: 10),
                        CustomTextButton(
                          width: double.infinity,
                          text: "Login",
                          onPressed: () {},
                        ),
                        SizedBox(height: 20),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "Don't have an account? ",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppPallete.textColorGrey2,
                                ),
                              ),
                              TextSpan(
                                text: "Sign Up",
                                style: TextStyle(
                                  fontSize: 15,
                                  color:
                                      Colors.blue, 
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
