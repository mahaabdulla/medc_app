import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medbok/core/helpers/spacing.dart';
import 'package:medbok/core/theming/styles.dart';
import 'package:medbok/core/widgets/app_text_button.dart';
import 'package:medbok/core/widgets/app_text_form_field.dart';
import 'package:medbok/features/login/views/widgets/already_have_account_text.dart';
import 'package:medbok/features/login/views/widgets/term_and_condition_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscure = true;
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
                Text('Welcome Back', style:TextStyles.font32BlueBold
                ),
                verticalSpace(20),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style:TextStyles.font12GrayRegular
                
                ),
                verticalSpace(36),
                Form(
                  key: formKey,
                  child: Column(children: [
          
                AppTextFormField(hintText: 'email', isObscure: false,),
                      verticalSpace(20),
                AppTextFormField(
                  isObscure: isObscure,
                  hintText: 'password',
                  suffixIcon: GestureDetector(
                    onTap: (){
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    child: Icon(isObscure ? Icons.visibility_off : Icons.visibility)),
                  ),
                      verticalSpace(20),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text('Forget Password ?', style: TextStyles.font13BlueRegular,))
                ])),
                verticalSpace(60),
                AppTextButton(text: 'Login', onPressed: () { 
                  // TODO ADD LOGIC
                 },),
                    verticalSpace(20),
                    TermAndConditionText(),
                           verticalSpace(50),
                    Align(alignment: AlignmentDirectional.center, child: AlreadyHaveAccountText())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
