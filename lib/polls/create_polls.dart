import 'package:flutter/material.dart';
import 'package:livintecchui/constant.dart';
import 'package:livintecchui/polls/add_image_post.dart';

class CreatePolls extends StatefulWidget {
  const CreatePolls({super.key});

  @override
  State<CreatePolls> createState() => _CreatePollsState();
}

class _CreatePollsState extends State<CreatePolls> {
  String selectedOption = 'public';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? AppColors.blackLight : Colors.white,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: isDark ? Colors.white : Colors.black,
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(2, 3), // changes position of shadow
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              foregroundColor: isDark ? Colors.white : Colors.black,
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: const Color.fromARGB(255, 203, 177, 247)),
          child: const Text(
            'Post',
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: isDark ? AppColors.blackLight : Colors.white,
        foregroundColor: isDark ? Colors.white : AppColors.blackLight,
        title: const Text(
          'Create Poll',
          style: TextStyle(
            fontSize: 16,
            color: isDark ? Colors.white : Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const AddImagePost();
                }));
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                        'assets/female.png'), // Replace with your profile picture
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Ava Thompson',
                        style: TextStyle(
                          color: isDark ? Colors.white : Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      DropdownButton<String>(
                        elevation: 10,
                        dropdownColor: isDark ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        value: selectedOption,
                        onChanged: (newValue) {
                          setState(() {
                            selectedOption = newValue!;
                          });
                        },
                        items: const [
                          DropdownMenuItem(
                            value: 'public',
                            child: Text(
                              'Public',
                              style: TextStyle(
                                color: isDark ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'k1',
                            child: Text(
                              'Kitty Party',
                              style: TextStyle(
                                color: isDark ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'k2',
                            child: Text(
                              'Kitty Party 2',
                              style: TextStyle(
                                color: isDark ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'k3',
                            child: Text(
                              'Kitty Party 3',
                              style: TextStyle(
                                color: isDark ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Option 1*',
                style: TextStyle(
                    fontSize: 16, color: isDark ? Colors.white : Colors.black),
              ),
              const SizedBox(height: 6),
              _customTextField(maxline: 3),
              const SizedBox(height: 16),
              const Text(
                'Option 2*',
                style: TextStyle(
                    fontSize: 16, color: isDark ? Colors.white : Colors.black),
              ),
              const SizedBox(height: 6),
              _customTextField(),
              const SizedBox(height: 16),
              const Text(
                'Option 3*',
                style: TextStyle(
                    fontSize: 16, color: isDark ? Colors.white : Colors.black),
              ),
              const SizedBox(height: 6),
              _customTextField(),
              const SizedBox(height: 16),
              const Text(
                'Option 4*',
                style: TextStyle(
                    fontSize: 16, color: isDark ? Colors.white : Colors.black),
              ),
              const SizedBox(height: 6),
              _customTextField(),
              const SizedBox(height: 16),
              Container(
                height: 40,
                width: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.blue)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Add Option',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _customTextField({int? maxline}) {
    return TextFormField(
      maxLines: maxline ?? 1,
      showCursor: true,
      decoration: InputDecoration(
        fillColor: isDark ? Colors.grey.shade800 : Colors.white,
        filled: true,
        hintText: 'Add option',
        labelStyle: TextStyle(color: isDark ? Colors.white : Colors.black),
        hintStyle: TextStyle(color: isDark ? Colors.white : Colors.black),
        contentPadding: EdgeInsets.symmetric(
            horizontal: 10, vertical: maxline != null ? 5 : 0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
      ),
    );
  }
}
