// import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

import '../model/wallet_model.dart';

class button extends StatefulWidget {
  late final Select? select;
  late final bool? isActiv;
  late final ValueChanged<int>? onSelected;

  button({super.key, this.select, this.isActiv = false, this.onSelected});

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          widget.onSelected!(widget.select!.nominal!);
        },
        child: Ink(
          width: 80,
          padding: EdgeInsets.only(top: 8, bottom: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color:
              widget.isActiv == true ? '4DA934'.toColor() : 'D6D6D6'.toColor()),
          child: Center(
            child: Text(
              NumberFormat.currency(locale: 'id', decimalDigits: 0)
                  .format(widget.select!.nominal),
              style: GoogleFonts.poppins().copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: 'FFFFFF'.toColor()),
            ),
          ),
        ),
      ),
    );
  }
}
