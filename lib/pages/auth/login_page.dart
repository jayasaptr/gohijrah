import 'package:flutter/material.dart';
import 'package:gohijrah/pages/auth/register_page.dart';
import 'package:gohijrah/theme.dart';
import 'package:gohijrah/widget/btn_primary.dart';
import 'package:gohijrah/widget/textfield_costume.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool isDisable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Center(
            child: Image.asset(
              'assets/images/logo.png',
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
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
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
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
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    if (emailController.text.isEmpty &&
                        passController.text.isEmpty) {
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
                const SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text("Lupa Password?",
                      style: GoogleFonts.roboto(
                        fontSize: 12.sp,
                        fontWeight: medium,
                        color: primary,
                      )),
                ),
                const SizedBox(height: 30),
                BtnPrimary(
                  isDisable: isDisable,
                  txtBtn: "Login",
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Belum punya akun go hijrah?",
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage(),));
                },
                child: Text(
                  "Register",
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
    );
  }
}
