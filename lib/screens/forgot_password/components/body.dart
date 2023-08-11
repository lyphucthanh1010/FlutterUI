import 'package:ecommerce/components/custom_surffix_icon.dart';
import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/components/form_error.dart';
import 'package:ecommerce/components/no_account_text.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight *0.04),
              Text("Forgot Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                  "Please enter your email and we will send \n you a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight *0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}
class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({super.key});

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  late String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => email = newValue!,
        onChanged: (value) {
          if(value!.isNotEmpty && errors.contains(kEmailNullError)){
            setState(() {
              errors.remove(kEmailNullError);
            });
          } else if(emailValidatorRegExp.hasMatch(value)
              && errors.contains(kInvalidEmailError))
          {
            setState(() {
              errors.remove(kInvalidEmailError);
            });
          }
          return null;
        },
        validator: (value) {
          if(value!.isEmpty && !errors.contains(kEmailNullError)){
            setState(() {
              errors.add(kEmailNullError);
            });
          } else if(!emailValidatorRegExp.hasMatch(value)
              && !errors.contains(kInvalidEmailError))
          {
            setState(() {
              errors.add(kInvalidEmailError);
            });
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/Mail.svg",
          ),
        ),
      ),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight *0.1),
          DefaultButton(
              text: "Continue",
              press: (){
                if(_formKey.currentState!.validate()){

                }
              },
          ),
          SizedBox(height: SizeConfig.screenHeight *0.1),
          NoAccountText(),
        ],
      ),
    );
  }
}
