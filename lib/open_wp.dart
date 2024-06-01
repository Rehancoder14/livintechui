import 'package:flutter/material.dart';
import 'package:livintecchui/chips_page.dart';
import 'package:livintecchui/constant.dart';

class OpenWp extends StatelessWidget {
  const OpenWp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? AppColors.blackColor : Colors.white,
      appBar: AppBar(
        backgroundColor: isDark ? AppColors.blackColor : Colors.white,
        foregroundColor: isDark ? Colors.white : Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: const Text(
          'Back',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Choose an avatar',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: isDark ? Colors.white : Colors.black),
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'assets/female.png',
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'assets/female.png',
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'assets/female.png',
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'assets/female.png',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 16,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'assets/female.png',
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'assets/female.png',
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'assets/female.png',
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      // backgroundImage: AssetImage(
                      //   'assets/female.png',
                      // ),
                      backgroundColor: Color.fromARGB(255, 239, 130, 166),
                      child: Icon(
                        Icons.upload,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                color: isDark ? AppColors.blackColor : Colors.white,
                elevation: 0.5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      30,
                    ),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          isDark ? 'assets/darkrec.png' : 'assets/lightrec.png',
                        ),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.7,
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 10,
                    right: 10,
                  ),
                  margin: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/female.png'),
                        radius: 50,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Welcome to kitty party!',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: isDark ? Colors.white : Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Let's start with your name",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: isDark ? Colors.white : Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            focusColor: Colors.pink,
                            labelText: 'First name*',
                            hintText: 'Enter your first name',
                            labelStyle: TextStyle(
                                color: isDark ? Colors.white : Colors.black),
                            hintStyle: TextStyle(
                                color: isDark ? Colors.white : Colors.black)),
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          focusColor: Colors.pink,
                          labelText: 'last name*',
                          labelStyle: TextStyle(
                              color: isDark ? Colors.white : Colors.black),
                          hintStyle: TextStyle(
                              color: isDark ? Colors.white : Colors.black),
                          hintText: 'Enter your last name',
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(children: [
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: Colors.pink.shade400,
                                  foregroundColor: Colors.white),
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ChipsPage(),
                                  ),
                                );
                              },
                              child: const Text('Continue'),
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
