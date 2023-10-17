import 'package:flutter/material.dart';

class RetryButton extends StatelessWidget {
  final VoidCallback onTap;

  const RetryButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Something went wrong try please \ntry again',
            textAlign: TextAlign.center,
            // style: FontStylesConstants.headingThree(color: Colors.black54),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF29BCC1),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                height: 55,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    'Retry',
                    // style: FontStylesConstants.headingThree(
                    //   color: Colors.white,
                    // ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
