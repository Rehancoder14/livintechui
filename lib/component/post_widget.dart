import 'package:flutter/material.dart';

// Dummy static data
final dummyRequest = {
  "user": {"name": "John Doe"},
  "type": "Prayer",
  "content": "Please pray for my family.",
  "attachments": [
    {"type": "image", "url": "https://via.placeholder.com/150"},
  ],
  "commentsCount": 5,
  "responsesCount": 10,
  "status": "green",
  "id": "123",
  "response": "willPray"
};

class PostWidget extends StatefulWidget {
  final bool image;
  final String text;
  const PostWidget({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  final borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0, left: 10, top: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: borderRadius,
            border: Border.all(
              color: Colors.black87,
            )),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/pageview.png',
                  height: 32,
                  width: 32,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rehan',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  fontSize: 14,
                                ),
                          ),
                          const Text(
                            '2D. ago',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xff4E5D78),
                            ),
                          ),
                        ],
                      ),
                      // Static placeholder for PostVisibilitytDropDown
                      const Icon(Icons.more_vert),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Text(widget.text,
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
            !widget.image
                ? Container()
                : Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Image.asset('assets/pageview.png')),
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Divider(
                color: Colors.grey[500],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Static placeholder for SeenImage

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.favorite_outline,
                    ),
                    Text(
                      '1.5k',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.grey[900],
                          ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.comment),
                    Text(
                      '5000',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.grey[900],
                          ),
                    ),
                  ],
                ),
                Text(
                  'Seen by 121983',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.grey[900],
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
