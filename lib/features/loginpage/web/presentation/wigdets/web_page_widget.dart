import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';

class WebPageWidget extends StatelessWidget {
  const WebPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight,
      width: screenWidth * 0.3,
      child: Stack(
        children: [
          ClipRect(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Stack(
              children: [
                SvgPicture.asset(
                  "assets/images/Red_oval.svg",
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: screenHeight * 0.04,
                  left: screenWidth * 0.02,
                  right: screenWidth * 0.02,
                  child: Container(
                    height: screenHeight * 0.85,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/images/mountains.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 20,
                      sigmaY: 20,
                      tileMode: TileMode.mirror,
                    ),
                    child: Container(
                      // Adjust this
                      color: Colors.transparent,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.02,
                          vertical: screenHeight * 0.05,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Powering Energy\nwith Smart\nManagement',
                                  style: TextStyle(
                                    fontSize:
                                        screenWidth *
                                        0.015, // Responsive font size
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontFamily: 'Mulish',
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                SizedBox(height: screenHeight * 0.03),
                                Text(
                                  'Streamline your solar sales process with our\ncomprehensive platform. Track leads, manage\nprojects and close deals faster than ever',

                                  style: TextStyle(
                                    fontSize: screenWidth * 0.010,
                                    color: Color(0xFFB0B0B0),
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
                            SizedBox(height: screenHeight * 0.05),
                            Center(
                              child: Wrap(
                                alignment: WrapAlignment.start,
                                spacing: screenWidth * 0.01,
                                runSpacing: 10,
                                children: const [
                                  FeatureTag(text: 'CRM'),
                                  FeatureTag(text: 'Lead Management'),
                                  FeatureTag(text: 'Project Tracking'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Responsive content
        ],
      ),
    );
  }
}

class FeatureTag extends StatelessWidget {
  final String text;

  const FeatureTag({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Red bullet point
        Container(
          width: 6,
          height: 6,
          decoration: const BoxDecoration(
            color: Color(0xFFE31E24),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        // Feature text
        Text(
          text,
          style: const TextStyle(
            color: Color(0xFFB0B0B0),
            fontSize: 12,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.2,
          ),
        ),
      ],
    );
  }
}
