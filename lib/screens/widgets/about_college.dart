import 'package:flutter/material.dart';

class AboutCollege extends StatefulWidget {
  const AboutCollege({super.key});

  @override
  State<AboutCollege> createState() => _AboutCollegeState();
}

class _AboutCollegeState extends State<AboutCollege> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Description',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
            style: TextStyle(
              color: Colors.black45,
              fontSize: 12,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Location',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 180,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/map.png'), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Student Review',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Column(
            children: [
              Row(
                children: [
                  _reviewImage(),
                  _reviewImage(),
                  _reviewImage(),
                  _reviewImage(),
                  Container(
                    margin: const EdgeInsets.only(top: 5, left: 8, right: 6),
                    height: 40,
                    width: 40,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      ' +12',
                      style: TextStyle(
                        color: Colors.lightBlue[900],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Arun sai',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.',
                    style: TextStyle(fontSize: 10, color: Colors.black45),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18,
                      ),
                      Icon(
                        Icons.star_half,
                        color: Colors.amber,
                        size: 18,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }

  Widget _reviewImage() {
    return Container(
      margin: const EdgeInsets.only(top: 5, left: 8, right: 6),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage('assets/exams.png'), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
