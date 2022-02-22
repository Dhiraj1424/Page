import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}
//
class _ProfileState extends State<Profile> {
  String url='https://jssors8.azureedge.net/demos/image-slider/img/px-beach-daylight-fun-1430675-image.jpg';
  @override
  Widget build(BuildContext context) {
    Size deviceSize =MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body:Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(child: Container(
                    height: deviceSize.height/2,
    
                    // color: Colors.yellow,
                    child:Stack(
                          children: [
                            Positioned(child: Container(
                              
                              decoration: BoxDecoration(
                                
                                image:DecorationImage(image: NetworkImage(url),
                                fit: BoxFit.cover
                                )
                              ),
                             
                              height: deviceSize.height/2.3,
                            ),
                            ),
    
                            const Positioned(
                              top: 30,
                              child: Icon(Icons.arrow_back,color: Colors.red,)),
                            
                           const Positioned(
                              bottom: 0,
                              right: 0,
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage('https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg'),
                              ),
                            ),
                            
                          ],
                        
                      
                    ),
                  )),
                  
                ],
              ),
                Container(
                  child: Column(
                    children: [
                      ListView(
                        shrinkWrap :true,
                        children: [
                          ListTile(
                            title:Text('Your Flutter day''\n is Nice ',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
                            
                            subtitle: Text('Welcome to flutter day '),
                            isThreeLine: true,
                          )
                        ],
                      )
                    ],
                  ),
                ),
    
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                     rowIconText('20', Icons.favorite_rounded),
                     rowIconText('30', Icons.update),
                     rowIconText('40', Icons.download),
                     rowIconText('50', Icons.face),
            ]
                  ),
                ),
                const Divider(),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..." “Lorem ipsum,” as you probably know, is placeholder text that allows clients to focus on design and UX, without getting distracted by the content — i.e., the words. Makes sense, right?'),
                )
            ],
          ),
        ) ,
      ),
    );
  }

  Widget rowIconText(String text, IconData icon){
      return Row(
        children: [
          Text(text,style: const TextStyle(fontSize: 20),),
          Icon(icon),
        ],
      );
  }
}