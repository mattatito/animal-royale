import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {

  final VoidCallback onTap;
  final Widget child;

  const LoginButton({ Key? key,required this.onTap,required this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.black12, offset: Offset(0.5,5))
          ]
        ),
        padding: EdgeInsets.all(20),
        child: child,
      ),
    );
  }
}