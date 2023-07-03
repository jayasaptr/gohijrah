import 'package:flutter/material.dart';
import 'package:gohijrah/pages/auth/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme.dart';
import '../../widget/btn_primary.dart';
import '../../widget/textfield_costume.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool isDisable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: MediaQuery.of(context).size.width * 0.8,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Register",
                    style: GoogleFonts.roboto(
                      fontSize: 20.sp,
                      fontWeight: bold,
                      color: black,
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFieldCustome(
                    isPrefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: Image.asset(
                        'assets/icons/username.png',
                        width: 4.w,
                      ),
                    ),
                    label: "",
                    hint: "Username",
                    controller: userController,
                    keyboardType: TextInputType.text,
                  ),
                  TextFieldCustome(
                    isPrefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: Image.asset(
                        'assets/icons/email.png',
                        width: 4.w,
                      ),
                    ),
                    label: "",
                    hint: "Email",
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFieldCustome(
                    isPrefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 5),
                      child: Text(
                        "+62",
                        style: GoogleFonts.roboto(
                          fontSize: 12.sp,
                          fontWeight: medium,
                          color: gray3,
                        ),
                      ),
                    ),
                    label: "",
                    hint: "Phone",
                    controller: phoneController,
                    keyboardType: TextInputType.number,
                  ),
                  TextFieldCustome(
                    isPassword: true,
                    isPrefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: Image.asset(
                        'assets/icons/password.png',
                        width: 4.w,
                      ),
                    ),
                    label: "",
                    hint: "Password",
                    controller: passController,
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (value) {
                      if (emailController.text.isEmpty &&
                          passController.text.isEmpty &&
                          userController.text.isEmpty &&
                          phoneController.text.isEmpty) {
                        setState(() {
                          isDisable = true;
                        });
                      } else {
                        setState(() {
                          isDisable = false;
                        });
                      }
                    },
                  ),
                  const SizedBox(height: 30),
                  BtnPrimary(
                    isDisable: isDisable,
                    txtBtn: "Register",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Udah punya akun?",
                  style: GoogleFonts.roboto(
                    fontSize: 11.sp,
                    fontWeight: semibold,
                    color: gray2,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.roboto(
                      fontSize: 11.sp,
                      fontWeight: semibold,
                      color: primary,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
