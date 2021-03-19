import 'package:flutter/material.dart';

class FooterColumn extends StatelessWidget {
  final String heading;
  final List<String> links;
  const FooterColumn({Key key, this.heading, this.links}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: "Manrope",
                color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          for (var link in links)
            Text(
              link,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  fontFamily: "Manrope",
                  color: Colors.white),
            ),
        ],
      ),
    );
  }
}
