import 'package:flutter/material.dart';

Widget  buildTextFormField({
  Widget? suffix,
  required Widget icon,
  required String lableTex,
  required TextInputType type,
  required GestureTapCallback ontap,
  required TextEditingController controller,
  required FormFieldValidator validat,
  ValueChanged? onSubmit,
  required bool obscure,
}) {
  return TextFormField(

    obscureText: obscure,
    onFieldSubmitted: onSubmit,
    validator: validat,
    controller: controller,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      prefixIcon:icon ,
      suffixIcon: suffix,


      labelText: lableTex,
    ),
    keyboardType: type,
    onSaved: (String? value) {
      // This optional block of code can be used to run
      // code when the user saves the form.
    },
    onTap: ontap,
  );

}

Widget buildButton(
    {
      double? width = double.infinity,
      required VoidCallback onPressed,
      required String title,
    }
    ){
  return Container(
    width:width,
    child: MaterialButton(
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ) ,
      onPressed: onPressed,
      color: Colors.deepOrange,
      child: Text(title,style: TextStyle(
        fontSize: 18,
      ),),
    ),
  );
}


void navigatTo(BuildContext context,Widget widget) {
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => widget));
}

