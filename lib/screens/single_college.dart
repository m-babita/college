import 'package:college/screens/widgets/about_college.dart';
import 'package:college/screens/widgets/hostel.dart';
import 'package:flutter/material.dart';

class SingleCollege extends StatefulWidget {
  const SingleCollege({super.key});

  @override
  State<SingleCollege> createState() => _SingleCollegeState();
}

class _SingleCollegeState extends State<SingleCollege> {
  List<String> items = [
    'About college',
    'Hostel facility',
    'Q & A',
    'Events',
  ];

  List widgets = [
    const AboutCollege(),
    const Hostel(),
    Container(),
    Container(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: Colors.lightBlue[900],
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.all(2),
            margin: const EdgeInsets.only(left: 10, top: 10, right: 0, bottom: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: const Icon(Icons.arrow_back),
          ),
        ),
        actions: [
          Container(
            height: 45,
            width: 45,
            padding: const EdgeInsets.all(2),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: const Icon(Icons.bookmark_border_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 180,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/institute2.jpg'))),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width * 0.85,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'GHJK Engineering college',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: const Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.lightGreenAccent[700],
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: const [
                                Text(
                                  '4.3',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 28,
                                )
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.only(bottom: 12),
                              height: 30,
                              width: 90,
                              decoration: BoxDecoration(
                                border: currentIndex == index
                                    ? const Border(
                                        bottom: BorderSide(
                                          color:
                                              Color.fromARGB(255, 1, 87, 155),
                                          width: 4.0,
                                        ),
                                      )
                                    : const Border(),
                              ),
                              child: Center(
                                child: Text(
                                  items[index],
                                  style: const TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width * 0.85,
                child: Column(
                  children: [
                    widgets[currentIndex],
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      items[currentIndex],
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Colors.black45),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        child: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text(
            'Apply Now',
            style: TextStyle(fontSize: 20),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          backgroundColor: Colors.lightBlue[900],
          foregroundColor: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
