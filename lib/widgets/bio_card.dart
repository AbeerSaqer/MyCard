import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BioCard extends StatelessWidget {
  const BioCard({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.subTitle,
    required this.marginBottom,
    required this.trailingIcon,
    required this.onPressed,
  }) : super(key: key);

  final IconData leadingIcon;
  final String title;
  final String subTitle;
  final IconData trailingIcon;
  final double marginBottom;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pink.shade50,
      elevation: 5,
      margin:
          EdgeInsetsDirectional.only(start: 30, end: 30, bottom: marginBottom),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Icon(
                leadingIcon,
                color: Colors.black45,
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(fontSize: 13),
                ),
                Text(
                  subTitle,
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.black45
                  ),
                ),
              ],
            ),
            Spacer(),
            IconButton(
              onPressed: onPressed,
              icon: Icon(trailingIcon),
              iconSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}
