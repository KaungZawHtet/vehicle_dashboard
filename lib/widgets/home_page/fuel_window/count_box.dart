import 'package:flutter/material.dart';

class CountBox extends StatelessWidget {
  final String title;
  final IconData icon;
  final String amount;

  const CountBox(
      {Key? key, required this.title, required this.icon, required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:  CrossAxisAlignment.center,
      children: [
        Text(title, style: TextStyle(color: Colors.white)),
        const SizedBox(
          height: 4,
        ),
        Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.indigo[300],
              borderRadius: BorderRadius.circular(9),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            )),
                    const SizedBox(
          height: 4,
        ),
        Text(amount, style: TextStyle(color: Colors.white))

      ],
    );
  }
}

/*

Column(
        children: <Widget>[
          Text(title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 1,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.indigo[300],
                borderRadius: BorderRadius.circular(9),
              ),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          Text(amount, style: const TextStyle(color: Colors.white, fontSize: 11))
        ],
      ),






            SizedBox(
              width: 8,
            ),
            Column(
                    mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text ("Fuel Capacity",
                style: TextStyle(color: Colors.white)),
                SizedBox(
                  height: 1,
                ),
                Text(TOTAL_FUEL,
                style: TextStyle(color: Colors.white)),
              ],
            )
*/
