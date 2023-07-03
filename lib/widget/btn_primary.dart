import 'package:flutter/material.dart';
import 'package:gohijrah/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BtnPrimary extends StatelessWidget {
  const BtnPrimary({
    super.key,
    this.txtBtn,
    required this.onPressed,
    this.isDisable,
  });

  final String? txtBtn;
  final VoidCallback onPressed;
  final bool? isDisable;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: isDisable == true && isDisable != null ? 0 : 1,
          backgroundColor:
              isDisable == true && isDisable != null ? gray3 : primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          txtBtn ?? "",
          textAlign: TextAlign.center,
          style: GoogleFonts.manrope(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color: white,
          ),
        ),
      ),
    );
  }
}
