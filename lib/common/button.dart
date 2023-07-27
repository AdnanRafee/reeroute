import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const ContinueButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 97,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 48,
              offset: Offset(0, 8))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 24),
        child: InkWell(
          onTap: () {
            onPressed();
          },
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xfff79633),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 48,
                    offset: Offset(0, 8))
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'inter',
                  fontSize: 18,
                  letterSpacing: 0.475,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ContinueBtnSimple extends StatelessWidget {
  final String title;
  final Function onPressed;
  const ContinueBtnSimple(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(24, 10, 24, 22),
      child: Container(
        height: 54,
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color(0xffF79633)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)))),
          onPressed: () {
            onPressed();
          },
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontFamily: 'inter'),
          ),
        ),
      ),
    );
  }
}
