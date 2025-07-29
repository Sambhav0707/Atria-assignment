import 'package:atria_assignment_sambhav07/core/commons/widgets/custom_text_button.dart';
import 'package:atria_assignment_sambhav07/core/commons/widgets/text_field.dart';
import 'package:atria_assignment_sambhav07/core/constants/text.dart';
import 'package:atria_assignment_sambhav07/core/theme/app_pallete.dart';
import 'package:atria_assignment_sambhav07/features/loginpage/web/presentation/wigdets/web_page_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebLogin extends StatelessWidget {
  const WebLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WebPageWidget(),

            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(color: AppPallete.backgroundColor),
                child: Center(
                  child: Container(
                    width: 539,
                    height: 596,
                    decoration: BoxDecoration(
                      color: AppPallete.whiteColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          double fieldWidth =
                              constraints.maxWidth > 500
                                  ? 400
                                  : constraints.maxWidth * 0.8;
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 45),
                              Container(
                                height: 70,
                                width: 70,
                                child: Image.asset("assets/images/logo.png"),
                              ),
                              SizedBox(height: 20),
                              Text(
                                TextsFile.welcomeText,
                                style: TextStyle(
                                  fontSize: 36,
                                  color: AppPallete.textColor,
                                  fontFamily: "Mulish",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 30),
                              SizedBox(
                                width: fieldWidth,
                                child: CustomTextField(
                                  labelText: TextsFile.email,
                                ),
                              ),
                              SizedBox(height: 30),
                              SizedBox(
                                width: fieldWidth,
                                child: CustomTextField(
                                  labelText: TextsFile.password,
                                  obscureText: true,
                                ),
                              ),
                              SizedBox(height: 20),
                              SizedBox(
                                width: fieldWidth,
                                child: CustomTextButton(
                                  height: 50,
                                  width: 300,
                                  text: TextsFile.login,
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                TextsFile.forgotPassword,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppPallete.buttonColor,
                                  fontFamily: "Mulish",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 20),
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "${TextsFile.loginText} ",
                                      style: TextStyle(
                                        color: AppPallete.textColorGrey2,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " welcome@atriarenewable.com",
                                      style: TextStyle(
                                        color:
                                            Colors
                                                .blue, // Make it look like a link
                                        decoration: TextDecoration.underline,
                                      ),
                                      recognizer:
                                          TapGestureRecognizer()
                                            ..onTap = () async {
                                              final Uri emailLaunchUri = Uri(
                                                scheme: 'mailto',
                                                path:
                                                    'welcome@atriarenewable.com',
                                              );
                                              await launchUrl(emailLaunchUri);
                                            },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
