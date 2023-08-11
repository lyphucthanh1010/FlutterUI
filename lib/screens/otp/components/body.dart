import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/otp/components/body.dart';
import 'package:ecommerce/screens/otp/components/otp_form.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text("OTP Verification",
              style: headingStyle,
              ),
              Text("We sent your code to your number"),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: (){

                },
                child: Text("Resend OTP Code",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("This code will be expired in"),
          TweenAnimationBuilder(
              tween: Tween(
                  begin: 30.0,
                  end: 0,
              ),
              duration: Duration(
                  seconds: 30,
              ),
              builder: (context, value, child) => Text(
                  "00:${value.toInt()}",
              style: TextStyle(color: kPrimaryColor),
              ),
              onEnd: () {

              },
          ),
        ],
        );
  }
}
