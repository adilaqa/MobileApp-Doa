import 'package:flutter/material.dart';
import 'package:doa/doa/all_doa_list.dart';
import 'package:doa/dzikir/content_dzikir.dart';
import 'package:doa/utils/custom_widget.dart';

class ContentMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:<Widget> [
          Padding(
            padding: EdgeInsets.only(right: 18.0,left: 18.0,top: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                Text('Pilih Aktivitas',
                    style: styleTitle,
                    textAlign: TextAlign.left),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            height: 90.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children:<Widget> [
                Expanded(
                  flex: 3,
                  child: Card(
                    color: Color.fromARGB(166, 255, 255, 255),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context, PageRouteBuilder(
                            transitionDuration: Duration(seconds: 2),
                            transitionsBuilder: (context,animation, animationTime,child){
                              animation = CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
                              return ScaleTransition(
                                scale: animation,
                                alignment: Alignment.center,
                                child: child,
                              );
                            },
                            pageBuilder: (context,animation,animationTime){
                              return ContentDzikir();
                            }));
                      },
                      child: Row(
                        children:<Widget> [
                          Padding(
                            padding:  EdgeInsets.all(8.0),
                            child: Hero(
                                tag: 'dzikir',
                                child: Image(image: AssetImage('assets/img/dzikir.png'),width: 30,
                                )
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Dzikir', style: cardTitle),
                                  Container(
                                      margin: EdgeInsets.only(top: 4.0),
                                      child: Text('Bacaan Tasbih, Tahmid,\nTahlil dan Takbir',
                                          style: tagLine,maxLines: 2,))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  flex: 3,
                  child: Card(
                    color: Color.fromARGB(166, 255, 255, 255),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context, PageRouteBuilder(
                            transitionDuration: Duration(seconds: 2),
                            transitionsBuilder: (context,animation, animationTime,child){
                              animation = CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
                              return ScaleTransition(
                                scale: animation,
                                alignment: Alignment.center,
                                child: child,
                              );
                            },
                            pageBuilder: (context,animation,animationTime){
                              return AllDoaList();
                            }));
                      },
                      child: Row(
                        children:<Widget> [
                          Padding(
                            padding:  EdgeInsets.all(8.0),
                            child: Hero(
                                tag: 'doa',
                                child: Image(image: AssetImage('assets/img/doa.png'),width: 30,
                                )
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Doa Harian', style: cardTitle),
                                  Container(
                                      margin: EdgeInsets.only(top: 4.0),
                                      child: Text('Kumpulan Doa Sehari-Hari',
                                          style: tagLine))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
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
