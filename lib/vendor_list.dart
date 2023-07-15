import 'package:flutter/material.dart';

class VendorList extends StatelessWidget {
  const VendorList({super.key});
  final double gape = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sale Product"),
          backgroundColor: const Color.fromARGB(255, 15, 108, 184),
          actions: const [
            IconButton(
                onPressed: null, icon: Icon(Icons.done, color: Colors.white))
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 224, 224, 224),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const VendorTile(
                  name: 'Ali',
                  company: 'abc',
                  phone: '0323*****',
                ),
                SizedBox(height: gape,),
                const VendorTile(
                  name: 'Gul Alam Khan',
                  company: 'def',
                  phone: '0323******',
                ),
                SizedBox(height: gape,),
                const VendorTile(
                  name: 'Faheem',
                  company: 'ghi',
                  phone: '0310******',
                ),
                SizedBox(height: gape,),
                const VendorTile(
                  name: 'Naveed',
                  company: 'jkl',
                  phone: '0315******',
                ),
              ],
            ),
          ),
        ));
  }
}

class VendorTile extends StatelessWidget {
  const VendorTile(
      {super.key,
      required this.name,
      required this.company,
      required this.phone});
  final double gape = 8;
  final String name, company, phone;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                const Icon(Icons.person),
                SizedBox(
                  width: gape,
                ),
                Text(name),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.card_giftcard),
                SizedBox(
                  width: gape,
                ),
                Text(company),
              ],
            ),
          ],
        ),
        SizedBox(
          height: gape,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.phone),
            SizedBox(
              width: gape,
            ),
            Text(phone),
          ],
        ),
        SizedBox(
          height: gape,
        ),
        Container(
          width: double.infinity,
          height: 2,
          color: const Color.fromARGB(255, 136, 136, 136),
        )
      ],
    );
  }
}
