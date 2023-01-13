import 'package:flutter/material.dart';

class Hostel extends StatefulWidget {
  const Hostel({super.key});

  @override
  State<Hostel> createState() => _HostelState();
}

class _HostelState extends State<Hostel> {
  List<String> beds = [
    ' 1 ',
    ' 2 ',
    ' 3 ',
    ' 4 ',
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: beds.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 3),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              color: currentIndex == index
                                  ? Colors.lightBlue[900]
                                  : Colors.white,
                              border: currentIndex == index
                                  ? const Border()
                                  : Border.all(
                                      color:
                                          const Color.fromARGB(255, 1, 87, 155),
                                    ),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.hotel,
                                color: currentIndex == index
                                    ? Colors.white
                                    : Colors.lightBlue[900],
                                size: 20,
                              ),
                              Text(
                                beds[index],
                                style: TextStyle(
                                    color: currentIndex == index
                                        ? Colors.white
                                        : Colors.lightBlue[900],
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Center(
            child: Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _hotelImage(),
                  _hotelImage(),
                  _hotelImage(),
                  _hotelImage(),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.circle,
                  color: Colors.grey,
                  size: 8,
                ),
                const Icon(
                  Icons.circle,
                  color: Colors.grey,
                  size: 8,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.lightBlue[900],
                  size: 8,
                ),
                const Icon(
                  Icons.circle,
                  color: Colors.grey,
                  size: 8,
                ),
                const Icon(
                  Icons.circle,
                  color: Colors.grey,
                  size: 8,
                ),
                const Icon(
                  Icons.circle,
                  color: Colors.grey,
                  size: 8,
                ),
                const Icon(
                  Icons.circle,
                  color: Colors.grey,
                  size: 8,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: const Text(
                        "GHJK Engineering College",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 2),
                        decoration: BoxDecoration(
                            color: Colors.lightGreenAccent[700],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
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
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.pin_drop_outlined,
                      size: 20,
                      color: Colors.lightBlue[900],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur ',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
                    style: TextStyle(color: Colors.black45, fontSize: 12),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  'Facilities',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.home_work_rounded,
                      size: 20,
                      color: Colors.orange[600],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'College in 400mtrs ',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: const [
                    Icon(
                      Icons.bathtub,
                      size: 20,
                      color: Colors.lightBlue,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Bathrooms : 2',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _hotelImage() {
    return Container(
      margin: const EdgeInsets.only(top: 5, left: 8, right: 6),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage('assets/hotel1.jpg'), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
