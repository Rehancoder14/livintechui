import 'package:flutter/material.dart';
import 'package:livintecchui/component/message_tile.dart';
import 'package:livintecchui/constant.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? Colors.grey.shade900 : Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 177, 134, 252),
        title: const Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            CircleAvatar(
              backgroundColor: Colors.pink,
              backgroundImage: AssetImage(
                'assets/pageview.png',
              ),
            ),
            Text(
              '   Kitty Party',
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
        actions: [
          InkWell(
            onTap: () {
              _showInviteCodeBottomSheet(context);
            },
            child: const CircleAvatar(
              radius: 15,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.celebration,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              // height: MediaQuery.of(context).size.height - 150,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  if (messages[index]['own'] &&
                      messages[index]['image'] != null) {
                    return Align(
                      alignment: Alignment.centerRight,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width *
                              0.7, // Adjust the width as needed
                        ),
                        child: Stack(
                          children: [
                            Card(
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              color: const Color.fromARGB(255, 254, 232, 193),
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 30,
                                  top: 5,
                                  bottom: 20,
                                ),
                                child: Column(children: [
                                  Image.asset(
                                    'assets/pageview.png',
                                    fit: BoxFit.fitWidth,
                                  ),
                                  Text(
                                    messages[index]['msg'],
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                            Positioned(
                              bottom: 4,
                              right: 16,
                              child: Row(
                                children: [
                                  Text(
                                    "12:05 pm",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.done_all,
                                    color: Colors.grey[600],
                                    size: 18,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }
                  if (messages[index]['own']) {
                    return MessageTileOwn(message: messages[index]['msg']);
                  }

                  return MessageTileOther(
                    message: messages[index]['msg'],
                  );
                },
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 7,
                  child: Card(
                    color: Colors.grey.shade200,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade200,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                          ),
                          fillColor: Colors.grey.shade200,
                          prefixIcon: IconButton(
                            icon: const Icon(Icons.emoji_emotions),
                            onPressed: () {},
                          ),
                          hintText: "Message",
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.camera_alt,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.purpulish,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: IconButton(
                      onPressed: () async {},
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showInviteCodeBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          color: isDark ? Colors.black : Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Invite Friends',
                    style: TextStyle(
                      color: isDark ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                'Share this invite code to people let them quickly join this Group',
                style: TextStyle(
                  fontSize: 14,
                  color: isDark ? Colors.white : Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: '#sdlasdhlsndlsdsk',
                  labelStyle:
                      TextStyle(color: isDark ? Colors.white : Colors.black),
                  hintStyle:
                      TextStyle(color: isDark ? Colors.white : Colors.black),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  suffixIcon: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'copy',
                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
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
                      backgroundColor:
                          const Color.fromARGB(255, 203, 177, 247)),
                  child: const Text(
                    'Join Group',
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
