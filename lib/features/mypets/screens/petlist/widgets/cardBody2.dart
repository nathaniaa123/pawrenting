import 'package:flutter/material.dart';

class CardBody2 extends StatelessWidget {
  const CardBody2({
    super.key,
    required this.field1,
    required this.field2,
    required this.val1,
    required this.val2
  });

  final String field1;
  final String field2;
  final String val1;
  final String val2;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            // color: Colors.red,
            width: 110,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(field1,
                  style: const TextStyle(
                    fontFamily: 'AlbertSans',
                    fontSize: 11,
                    fontWeight: FontWeight.w300
                  ),
                ),
                Text(val1,
                  style: const TextStyle(
                    fontFamily: 'AlbertSans',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: .8
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          SizedBox(
            // color: Colors.red,
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(field2,
                  style: const TextStyle(
                    fontFamily: 'AlbertSans',
                    fontSize: 11,
                    fontWeight: FontWeight.w300
                  ),
                ),
                Text(val2,
                  style: const TextStyle(
                    fontFamily: 'AlbertSans',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: .8
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}