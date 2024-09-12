import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, this.isLoading = false, this.onTap});

  final bool isLoading;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    // return the button
    return ElevatedButton(
      onPressed: () => onTap?.call(),
      child: isLoading
          ? const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(),
            )
          : const Text('Login'),
    );
  }
}
