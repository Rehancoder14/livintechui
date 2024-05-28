import 'package:flutter/material.dart';

class VerifyWhatsapp extends StatelessWidget {
  const VerifyWhatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.pink.shade300,
                // backgroundImage: AssetImage('assets/sunglasses_avatar.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'OTP link sent on whatsapp',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '#7397941495',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20.0),
              Row(children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Colors.pink[300],
                          foregroundColor: Colors.white),
                      icon: Image.asset(
                        'assets/wp.png',
                        height: 30,
                      ),
                      onPressed: () {
                        // Handle continue button press
                      },
                      label: const Text('Open whatsapp'),
                    ),
                  ),
                ),
              ]),
              const SizedBox(height: 20.0),
              Row(children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () {
                        // Handle continue with WhatsApp button press
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black),
                      child: const Text('Resend Link (00:56)'),
                    ),
                  ),
                ),
              ]),
              const SizedBox(height: 20.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Trouble with whatsapp? ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14.0),
                  ),
                  Text(
                    'Try another method',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14.0, color: Colors.green),
                  ),
                ],
              ),
              const SizedBox(height: 50.0),
              Text(
                'Powered by otpless ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12.0, color: Colors.grey.shade400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
