import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gohijrah/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class TextFieldCustome extends StatefulWidget {
  const TextFieldCustome({
    super.key,
    this.label,
    this.hint,
    this.controller,
    this.isSuffixIcon,
    this.isPassword,
    this.maxLine,
    this.onChanged,
    this.isEneble,
    this.keyboardType,
    this.isCurenncy,
    this.maxValue,
    this.isPrefixIcon,
    this.style,
  });

  final String? label;
  final String? hint;
  final TextEditingController? controller;
  final Widget? isSuffixIcon;
  final Widget? isPrefixIcon;
  final bool? isPassword;
  final int? maxLine;
  final ValueChanged<String>? onChanged;
  final bool? isEneble;
  final TextInputType? keyboardType;
  final bool? isCurenncy;
  final int? maxValue;
  final TextStyle? style;

  @override
  State<TextFieldCustome> createState() => _TextFieldCustomeState();
}

class _TextFieldCustomeState extends State<TextFieldCustome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label ?? "",
          style: GoogleFonts.lato(
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
            color: const Color(0xff000000),
          ),
        ),
        const SizedBox(height: 4),
        SizedBox(
          child: TextField(
            style: widget.style ??
                GoogleFonts.lato(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff000000),
                ),
            textInputAction: TextInputAction.next,
            keyboardType: widget.keyboardType ?? TextInputType.text,
            enabled: widget.isEneble,
            onChanged: widget.onChanged,
            maxLines: widget.maxLine ?? 1,
            obscureText: widget.isPassword ?? false || widget.isPassword == true
                ? true
                : false,
            controller: widget.controller,
            inputFormatters: widget.maxValue != null
                ? [
                    LengthLimitingTextInputFormatter(widget.maxValue),
                  ]
                : null,
            decoration: InputDecoration(
              prefixIconConstraints:
                  const BoxConstraints(minHeight: 8, minWidth: 8),
              prefixIcon: widget.isPrefixIcon,
              filled: true,
              fillColor: gray6,
              suffixIcon: widget.isSuffixIcon,
              hintText: widget.hint ?? "",
              hintStyle: GoogleFonts.lato(
                fontSize: 14.sp,
                fontWeight: reguler,
                color: gray3,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide.none),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide.none),
            ),
          ),
        ),
      ],
    );
  }
}
