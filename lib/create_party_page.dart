import 'package:flutter/material.dart';
import 'package:livintecchui/constant.dart';

class CreatePartyPage extends StatelessWidget {
  const CreatePartyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDark ? AppColors.blackLight : Colors.white,
        foregroundColor: isDark ? Colors.white : AppColors.blackLight,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Text(
            'Party',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.transparent, // Remove the default border
                  ),
                ),
                child: CustomPaint(
                  painter: DottedBorderPainter(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.image,
                        size: 48,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Upload Image',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              _customTextField(),
              SizedBox(
                height: 10,
              ),
              _customTextField(),
              SizedBox(
                height: 10,
              ),
              _customTextField(),
              SizedBox(
                height: 10,
              ),
              _customTextField(),
            ],
          )),
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

class DottedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..strokeMiterLimit = 4.0;

    final Rect rect = Offset.zero & size;
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
