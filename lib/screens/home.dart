import 'package:college/screens/widgets/bottom_modal.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        toolbarHeight: 180,
        elevation: 0.0,
        backgroundColor: Colors.lightBlue[900],
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            _topBar(),
            _searchBox(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              _homeCard(
                  'assets/colleges.jpg',
                  'Top Colleges',
                  'Search through thousands of accredited colleges and universities online to find the right one for you. Connect with your future.',
                  '+126 ',
                  'Colleges'),
              SizedBox(
                height: 15,
              ),
              _homeCard(
                  'assets/schools.jpg',
                  'Top Schools',
                  'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out.',
                  '+106 ',
                  'Schools'),
              SizedBox(
                height: 15,
              ),
              _homeCard(
                  'assets/exams.png',
                  'Top Exams',
                  'Find an end to end information about the exams that are happening in India',
                  '+16 ',
                  'Exams'),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                height: 5,
              ),
              Text(
                'Find your own way',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Search in 600 colleges around!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Stack(
          children: const [
            Icon(
              Icons.notifications_rounded,
              color: Colors.white,
              size: 30,
            ),
            Positioned(
                right: 0,
                child: Icon(
                  Icons.noise_control_off,
                  color: Colors.red,
                  size: 20,
                )),
          ],
        ),
      ],
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

  Widget _homeCard(path, title, description, snum, sname) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          builder: (BuildContext context) {
            return const BottomModal();
          },
        );
      },
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        width: 380,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: 380,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    path,
                  ),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: 380,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0),
                  ]),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      Text(
                        snum,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        sname,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                )),
            Container(
              padding: const EdgeInsets.all(25.0),
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
