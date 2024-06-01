import 'package:flutter/material.dart';
import 'package:livintecchui/constant.dart';
import 'package:livintecchui/verify_wp.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? AppColors.blackColor : Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage(
                  isDark ? 'assets/logodark.png' : 'assets/logo.png'),
              backgroundColor: Colors.pink.shade300,
              // backgroundImage: AssetImage('assets/sunglasses_avatar.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Kitty Party',
              style: TextStyle(
                  fontSize: 26, color: isDark ? Colors.white : Colors.black),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Welcome to kitty party',
              style: TextStyle(
                  fontSize: 18, color: isDark ? Colors.white : Colors.black),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              height: 60,
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixText: '+91 ',
                  hintText: 'Enter your phone number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
            const SizedBox(height: 20.0),
            Row(children: [
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.pink[300],
                        foregroundColor: Colors.white),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VerifyWhatsapp()));
                    },
                    child: const Text('Continue'),
                  ),
                ),
              ),
            ]),
            const SizedBox(height: 20.0),
            const Text(
              '------------   OR   -------------',
              style: TextStyle(color: isDark ? Colors.white : Colors.black),
            ),
            const SizedBox(height: 20.0),
            Row(children: [
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      // Handle continue with WhatsApp button press
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black),
                    icon: Image.asset(
                      'assets/wp.png',
                      height: 30,
                    ),
                    label: const Text('Continue with WhatsApp'),
                  ),
                ),
              ),
            ]),
            const SizedBox(height: 20.0),
            const Text(
              'By signing in, you agree to Terms and Policy',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 12.0, color: isDark ? Colors.white : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
