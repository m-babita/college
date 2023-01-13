import 'package:college/screens/bottom_nav.dart';
import 'package:flutter/material.dart';

class BottomModal extends StatefulWidget {
  const BottomModal({Key? key}) : super(key: key);

  @override
  State<BottomModal> createState() => _BottomModalState();
}

class _BottomModalState extends State<BottomModal> {
  String radioVal = 'Btech';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      height: 330,
      child: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black12))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sort',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  InkWell(
                      onTap: (() => Navigator.pop(context)),
                      child: const Icon(
                        Icons.close,
                        size: 30,
                        color: Colors.black54,
                      )),
                ],
              ),
            ),
            _radioSort(
              'assets/radio1.png',
              'Bachelor of Technology',
              'Btech',
            ),
            _radioSort(
              'assets/radio2.png',
              'Bachelor of Architecture',
              'Barch',
            ),
            _radioSort(
              'assets/radio3.png',
              'Pharmacy',
              'Pharm',
            ),
            _radioSort(
              'assets/radio4.png',
              'Law',
              'Law',
            ),
            _radioSort(
              'assets/radio5.png',
              'Management',
              'Mngmnt',
            ),
          ],
        ),
      ),
    );
  }

  Widget _radioSort(path, title, value) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const BottomNav(pageno: 2)));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: AssetImage(path),
                color: Colors.black,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              )
            ],
          ),
          Radio(
            fillColor: MaterialStateProperty.resolveWith(
                (states) => const Color.fromRGBO(14, 60, 110, 1)),
            value: value,
            groupValue: radioVal,
            onChanged: (value) {
              setState(() {
                radioVal = value.toString();
              });
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const BottomNav(pageno: 2)));
            },
          ),
        ],
      ),
    );
  }
}
