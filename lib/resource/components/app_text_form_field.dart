import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField {
  static TextFormField textFormField(BuildContext context,
      {TextEditingController? controller,
      String? hintText,
      TextInputType? keyboardType,
      Widget? prefixIcon,
      Widget? suffixIcon,
      String? Function(String?)? validator,
      bool readOnly = false,
      void Function()? onTap,
      Iterable<String>? autofillHints,
      Color? fillColor,
      bool obscureText = false,
      String obscuringCharacter = '•'}) {
    return TextFormField(
      obscureText: obscureText,
      obscuringCharacter: obscuringCharacter,
      autofillHints: autofillHints,
      cursorOpacityAnimates: true,
      readOnly: readOnly,
      onTap: onTap,
      keyboardType: keyboardType,
      textInputAction: TextInputAction.next,
      validator: validator,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
        suffixIcon: suffixIcon,
        isDense: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20.0.r),
        ),
        fillColor: fillColor ?? Theme.of(context).colorScheme.surface,
        filled: true,
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.4)),
      ),
      controller: controller,
    );
  }
}
 //this hide code for password text field.


//  ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);


// ValueListenableBuilder(
//             valueListenable: _obsecurePassword,
//             builder: (context, value, child) {
//               return TextFormField(
//                 obscureText: _obsecurePassword.value,
//                 obscuringCharacter: "*",
//                 decoration: InputDecoration(
//                   hintText: 'Password',
//                   labelText: 'Password',
//                   prefixIcon: Icon(Icons.lock_open_rounded),
//                   suffixIcon: InkWell(
//                       onTap: () {
//                         _obsecurePassword.value = !_obsecurePassword.value;
//                       },
//                       child: Icon(_obsecurePassword.value
//                           ? Icons.visibility_off_outlined
//                           : Icons.visibility)),
//                 ),
//               );
//             }),