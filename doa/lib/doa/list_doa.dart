import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doa/model/doa.dart';
import 'package:doa/utils/custom_widget.dart';
import 'all_doa_list.dart';

class ListDoa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        // Isi
        Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    margin:
                        EdgeInsets.only(left: 18.0, right: 18.0, top: 6.0,bottom: 8),
                    child: Text('Kumpulan Doa', style: styleTitle)),
                    Container(
                    margin:
                        EdgeInsets.only(left: 18.0, right: 18.0, top: 6.0,bottom: 8),
                    child: GestureDetector(onTap: () =>  Navigator.push(
              context,
              PageRouteBuilder(
                  transitionDuration: Duration(milliseconds: 30),
                  transitionsBuilder:
                      (context, animation, animationTime, child) {
                    animation = CurvedAnimation(
                        parent: animation, curve: Curves.elasticOut);
                    return ScaleTransition(
                        scale: animation,
                        alignment: Alignment.center,
                        child: child);
                  },
                  pageBuilder: (context, animation, animationTime) {
                    return AllDoaList();
                  })),child: Text('Lihat Semua >', style: styleTitle))),
              ],
            ),
            Container(
              height: 390.0,
              child: ListView(
                // physics: NeverScrollableScrollPhysics(),
                children: dataListDoa.map((list) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom : 8.0, left: 5, right: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 190, 106),
                          
                        ),
                        // elevation: 0,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(10.0)
                        // ),
                        // color: Colors.white,
                        onPressed: () {},
                        child: ListTile(
                          title: Text(list.title,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
        // Floating nav bar
     
      ],
    );
  }
}

class FloatingNavbar extends StatelessWidget {
  const FloatingNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 10,
            shape: RoundedRectangleBorder(),
            backgroundColor: Colors.white,),
        onPressed: () {
          Navigator.push(
              context,
              PageRouteBuilder(
                  transitionDuration: Duration(milliseconds: 30),
                  transitionsBuilder:
                      (context, animation, animationTime, child) {
                    animation = CurvedAnimation(
                        parent: animation, curve: Curves.elasticOut);
                    return ScaleTransition(
                        scale: animation,
                        alignment: Alignment.center,
                        child: child);
                  },
                  pageBuilder: (context, animation, animationTime) {
                    return AllDoaList();
                  }));
        },
        child: Container(
          child: ListTile(
            title: Center(
              child: Text(
                'Lihat Semua',
                style:
                    TextStyle(color: Color.fromARGB(255, 255, 190, 106), fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
