import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import '../../common/color_extension.dart';
import 'verified_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: context.width,
          height: context.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: context.height * 0.3,
              ),
              Image.asset(
                "assets/img/color_logo.png",
                width: context.width * 0.33,
              ),
              SizedBox(
                height: context.height * 0.05,
              ),
              Text(
                "Enter Verification Code",
                style: TextStyle(
                  color: TColor.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                textAlign: TextAlign.center,
                "Enter the verification code sent to your \n Mobile number",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: OtpTextField(
                  numberOfFields: 6,
                  borderColor: TColor.placeholder,
                  focusedBorderColor: TColor.primary,
                  obscureText: false,
                  textStyle: const TextStyle(
                    color: Color(0xff43c73d),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  showFieldAsBox: false,
                  borderWidth: 3.0,
                  onCodeChanged: (value) {},
                  onSubmit: (value) {},
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: InkWell(
                  onTap: () {
                    //send to next screen
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const VerifiedScreen();
                    }));
                  },
                  child: Container(
                    width: double.maxFinite,
                    height: 40,
                    decoration: BoxDecoration(
                      color: TColor.primary,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Didn't receive the code?",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        //send to back
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Resend It",
                        style: TextStyle(
                          color: TColor.primary,
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
