import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OpenWp extends StatelessWidget {
  const OpenWp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.yellow,
                      child: Icon(Icons.person),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.yellow,
                      child: Icon(Icons.person),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.yellow,
                      child: Icon(Icons.person),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.yellow,
                      child: Icon(Icons.person),
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
                      backgroundColor: Colors.yellow,
                      child: Icon(Icons.person),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.yellow,
                      child: Icon(Icons.person),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.yellow,
                      child: Icon(Icons.person),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.yellow,
                      child: Icon(Icons.upload),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 5,
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
                  margin: const EdgeInsets.only(left: 30, top: 10),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.pink,
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
                                fontSize: 24, fontWeight: FontWeight.w700),
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
                                fontSize: 16, fontWeight: FontWeight.w400),
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
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          focusColor: Colors.pink,
                          labelText: 'last name*',
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
                                // Handle continue button press
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
