import 'package:flutter/material.dart';

void showWelcomeDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false, // User must tap button to close
    builder: (context) {
      return Dialog(
        backgroundColor: Colors.grey[900],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.waving_hand, size: 48, color: Colors.amberAccent),
              const SizedBox(height: 20),
              const Text(
                "Welcome to My Portfolio.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Explore my skills, projects and more.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
              const Text(
                "\nWarning: This portfolio is still a work in progress. Some UI elements might not be fully responsive or functional yet.\nThank you for your patience and understanding!",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Let's Go!"),
              ),
            ],
          ),
        ),
      );
    },
  );
}
