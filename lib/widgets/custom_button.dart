import 'package:flutter/material.dart';
import 'package:getx_stateapp/core/color/color.dart';

customButton({required VoidCallback? onPressed, required String label}) {
  return Expanded(
    child: Center(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            width: 1.1,
            color: kBlack,
          ),
          backgroundColor: kWhite,
          minimumSize: const Size(120, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(color: kBlack, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}
