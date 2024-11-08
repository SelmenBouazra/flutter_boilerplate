import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/color.dart';
import '../../../../core/theme/text_size.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/utils/validator.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/input_text_field.dart';
import '../../../../generated/l10n.dart';
import '../../domain/entities/login_request.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key, required this.login});

  final Function(LoginRequest loginRequest) login;

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final _controllerEmail = TextEditingController();
  final _controllerPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              SvgPicture.asset(
                'assets/icons/effia.svg',
                height: 43.h,
                width: 200.w,
              ),
              SizedBox(
                height: 50.h,
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: appPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).email,
                        style: subTitleTextStyle,
                      ),
                      SizedBox(height: 15.h),
                      InputTextFiled(
                        controller: _controllerEmail,
                        textFieldHint: "Abc@example.co",
                        isRequired: false,
                        prefixIcon: Icon(Icons.email, color: empty),
                        backgroundColor: Colors.transparent,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          return validateEmail(context, value?.trim());
                        },
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Text(
                        S.of(context).password,
                        style: subTitleTextStyle,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      InputTextFiled(
                        controller: _controllerPassword,
                        textFieldHint: "*********",
                        isRequired: false,
                        isPasswordField: true,
                        prefixIcon: Icon(Icons.lock, color: empty),
                        backgroundColor: Colors.transparent,
                        keyboardType: TextInputType.visiblePassword,
                        validator: (value) {
                          return validateField(
                              context: context,
                              value: value,
                              message: S.of(context).please_fill_in_the_required_field);
                        },
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      GestureDetector(
                        onTap: () {

                        },
                        child: Text(
                          S.of(context).forget_password,
                          style: textAlignedTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 26.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: appPadding),
                child: CustomButton(
                    text: S.of(context).login,
                    inverseColor: true,
                    onPressed: () {
                      widget.login(LoginRequest(
                          userEmail: _controllerEmail.text.trim(),
                          password: _controllerPassword.text));
                    }),
              ),
              SizedBox(
                height: 72.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: appPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).dont_have_account,
                      style: textAlignedTextStyle,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    CustomButton(
                      text: S.of(context).create_account,
                      onPressed: () {
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 55.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: primary,
                      thickness: 2,
                      endIndent: 10,
                    ),
                  ),
                  Text(
                    S.of(context).or_else,
                    style: subTitleTextStyle,
                  ),
                  Expanded(
                    child: Divider(
                      color: primary,
                      thickness: 2,
                      indent: 10,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: appPadding),
                child: CustomButton(
                  inverseColor: true,
                  leadingIcon: SvgPicture.asset("assets/icons/google_icon.svg"),
                  text: S.of(context).google_connect,
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: appPadding),
                child: CustomButton(
                    leadingIcon: SvgPicture.asset("assets/icons/phone_icon.svg"),
                    text: S.of(context).phone_connect, onPressed: () {}),
              ),
              SizedBox(
                height: 76.h,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
