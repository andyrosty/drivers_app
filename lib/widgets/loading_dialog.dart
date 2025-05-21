import 'package:flutter/material.dart';

// A dialog widget that displays a loading indicator with a message
class LoadingDialog extends StatelessWidget
{
  // Message to display next to the loading indicator
  String messageText;

  // Constructor requiring a message text
  LoadingDialog({super.key, required this.messageText,});

  @override
  Widget build(BuildContext context)
  {
    return Dialog(
      // Rounded corners for the dialog
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      backgroundColor: Colors.black87,
      child: Container(
        margin: const EdgeInsets.all(15),
        width: double.infinity,
        // Additional styling for the container
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          // Row layout for the loading indicator and message
          child: Row(
            children: [
              // Spacing before the loading indicator
              const SizedBox(width: 5,),

              // Circular loading indicator with white color
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),

              // Spacing between the loading indicator and text
              const SizedBox(width: 8,),

              // Message text with white color
              Text(
                messageText,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
