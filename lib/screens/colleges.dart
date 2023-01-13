import 'package:college/screens/single_college.dart';

import 'package:flutter/material.dart';

class Colleges extends StatefulWidget {
  const Colleges({super.key});

  @override
  State<Colleges> createState() => _CollegesState();
}

class _CollegesState extends State<Colleges> {
  final TextEditingController _searchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(25),
        )),
        toolbarHeight: 100,
        elevation: 0.0,
        backgroundColor: Colors.lightBlue[900],
        title: _searchBox(),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Container(
              height: 60,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Container(
                  width: 180,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black54)),
                  child: const Center(
                      child: Text(
                    'MVSH Engineering college ',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  )),
                ),
                Container(
                  width: 180,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black54)),
                  child: const Center(
                      child: Text(
                    'MVSH Engineering college ',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  )),
                ),
                Container(
                  width: 180,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black54)),
                  child: const Center(
                      child: Text(
                    'MVSH Engineering college ',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  )),
                ),
              ]),
            ),
            SizedBox(
              height: 2,
            ),
            _collegeCard(
              'assets/institute1.jpg',
              'GHJK Engineering college',
            ),
            SizedBox(
              height: 20,
            ),
            _collegeCard(
              'assets/institute2.jpg',
              'Bachelor of Technology',
            ),
            SizedBox(
              height: 20,
            ),
            _collegeCard(
              'assets/institute3.jpg',
              'SVVV Engineering college',
            ),
            SizedBox(
              height: 100,
            ),
          ],
        )),
      ),
    );
  }

  Widget _searchBox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 8),
          width: 250,
          height: 65,
          child: TextFormField(
            textAlign: TextAlign.start,
            controller: _searchText,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.search),
              hintText: 'Search for colleges, schools...',
              contentPadding: EdgeInsets.all(0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 5,
          ),
          height: 45,
          width: 45,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Icon(
            Icons.mic,
            size: 28.0,
            color: Colors.lightBlue[900],
          ),
        )
      ],
    );
  }

  Widget _collegeCard(path, title) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const SingleCollege()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        height: MediaQuery.of(context).size.height * 0.35,
        width: 360,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(path),
                    ),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                ),
                Positioned(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Icon(Icons.share_outlined),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Icon(Icons.bookmark_border_rounded),
                    ),
                  ],
                ))
              ],
            ),
            Container(
              width: 360,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  )
                ],
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(20)),
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 248,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.',
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 10),
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 2),
                                decoration: BoxDecoration(
                                    color: Colors.lightGreenAccent[700],
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10))),
                                child: Row(
                                  children: const [
                                    Text(
                                      '4.3',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 22,
                                    )
                                  ],
                                )),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.lightBlue[900],
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                              ),
                              child: const Text(
                                'Apply Now',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                        color: Colors.black12,
                      ))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: const [
                            Image(image: AssetImage('assets/like.png')),
                            SizedBox(
                              width: 10,
                            ),
                            Text('More than 1000+ students have been placed',
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 10)),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.black45,
                              size: 20,
                            ),
                            Text(' 468+',
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 10)),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
