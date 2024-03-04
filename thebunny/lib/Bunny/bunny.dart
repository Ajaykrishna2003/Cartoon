import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Bunny extends StatefulWidget {
 

  @override
  State<Bunny> createState() => _BunnyState();
}

class _BunnyState extends State<Bunny> {
  
  final String videoId = 'YRKYcsUx56w'; 

  
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'YRKYcsUx56w', 
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('THE BUNNY'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Container(
              padding: EdgeInsets.all(8),
              child: Image.asset(
                'images/newbunny(1).jpg', 
                width: 100,
                height: 100,
              ),
            ),
            
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'THE BUNNY',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
            Container(
              padding: EdgeInsets.all(8),
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                onReady: () {
                  
                },
              ),
            ),
          
            Container(
              padding: EdgeInsets.all(8),
              child: Text(
                'WELL KNOWN CARTOON CHARACTERS WOULD HAVE BEEN STEALED YOUR HEART,ALL THOSE CHARACTERS YOU CAN WATCH FROM ONE PLATFORM THAT IS THIS CHANNEL',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            
            Container(
              padding: EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () {
                  
                },
                child: Text('Visit My Channel'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
