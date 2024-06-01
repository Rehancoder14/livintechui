import 'package:flutter/material.dart';
import 'package:livintecchui/bottom_navbar.dart';
import 'package:livintecchui/constant.dart';

class InvitationPage extends StatelessWidget {
  const InvitationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? AppColors.blackColor : Colors.white,
      appBar: AppBar(
        backgroundColor: isDark ? AppColors.blackColor : Colors.white,
        foregroundColor: isDark ? Colors.white : Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'Back',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.06, bottom: 15),
                child: Image.asset('assets/party.png')),
            Card(
              elevation: 5,
              color: isDark ? AppColors.blackColor : Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    30,
                  ),
                ),
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: isDark ? AppColors.blackColor : Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(
                      30,
                    ),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.48,
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                ),
                // margin: const EdgeInsets.only(left: 30, top: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Do you have invitation",
                            style: TextStyle(
                                color: isDark ? Colors.white : Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Enter the invitation code provided by your friends",
                        style: TextStyle(
                            color: isDark ? Colors.white : Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            focusColor: Colors.pink,
                            labelText: 'Invitation code*',
                            hintText: 'Enter your invitation code',
                            labelStyle: TextStyle(
                                color: isDark ? Colors.white : Colors.black),
                            hintStyle: TextStyle(
                                color: isDark ? Colors.white : Colors.black)),
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('------------   OR   -------------',
                          style: TextStyle(
                              color: isDark ? Colors.white : Colors.black)),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton.icon(
                              onPressed: () {
                                // Handle continue with WhatsApp button press
                              },
                              style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                  ),
                                  side: const BorderSide(color: Colors.green),
                                  backgroundColor: Colors.green.shade50),
                              icon: Image.asset(
                                'assets/wp.png',
                                height: 30,
                              ),
                              label: const Text(
                                'Contact us',
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                  ),
                                  backgroundColor: Colors.pink.shade300,
                                  foregroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const BottomNavBar(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Finish',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
