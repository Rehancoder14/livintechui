import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddImagePost extends StatefulWidget {
  const AddImagePost({super.key});

  @override
  State<AddImagePost> createState() => _AddImagePostState();
}

class _AddImagePostState extends State<AddImagePost> {
  String selectedOption = 'public';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(2, 3), // changes position of shadow
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () {
            // Handle the join action
          },
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              foregroundColor: Colors.black,
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: const Color.fromARGB(255, 203, 177, 247)),
          child: const Text(
            'Post',
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Create Post',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
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
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    DropdownButton<String>(
                      elevation: 10,
                      dropdownColor: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      value: selectedOption,
                      onChanged: (newValue) {
                        setState(() {
                          selectedOption = newValue!;
                        });
                      },
                      items: [
                        DropdownMenuItem(
                          value: 'public',
                          child: Text('Public'),
                        ),
                        DropdownMenuItem(
                          value: 'k1',
                          child: Text('Kitty Party'),
                        ),
                        DropdownMenuItem(
                          value: 'k2',
                          child: Text('Kitty Party 2'),
                        ),
                        DropdownMenuItem(
                          value: 'k3',
                          child: Text('Kitty Party 3'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextFormField(
              maxLines: 16,
              showCursor: true,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Write Something',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.asset(
                    'assets/imgadd.png',
                    height: 80,
                    width: 80,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    height: 60,
                    color: Colors.black54,
                    width: 1,
                  ),
                  _buildImg(),
                  SizedBox(
                    width: 5,
                  ),
                  _buildImg(),
                  SizedBox(
                    width: 5,
                  ),
                  _buildImg()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildImg() {
    return Stack(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            image: const DecorationImage(
                image: AssetImage(
                  'assets/pageview.png',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
          right: 2,
          top: 2,
          child: Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10,
              ),
              image: const DecorationImage(
                  image: AssetImage(
                    'assets/close.png',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
        )
      ],
    );
  }
}
