import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
class MusicPlayer extends StatefulWidget {
  static String tag = 'music';
  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}
class _MusicPlayerState extends State<MusicPlayer> {
  final audio = "audio1.mp3"; final music = "Malacum Wawapa - Kalamarka";
  AudioPlayer audioPlayer; AudioCache audioCache;
  double vol = 1; double cVolume;
  Duration duration = Duration(); Duration position = Duration();
  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer(); audioCache = AudioCache(fixedPlayer: audioPlayer);
    audioPlayer.positionHandler = (p) => setState(() { position = p; });
    audioPlayer.durationHandler = (d) => setState(() { duration = d; });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reproductor de Musica",
            style: TextStyle(fontSize: 20, color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(music, style: TextStyle(fontSize: 20)),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: Image(image: AssetImage("assets/zamp1.png"),),
              ),
            Card(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: audioControls(),
                    ),
                  ),
                  Slider(
                    activeColor: Colors.purpleAccent,
                    value: position.inSeconds.toDouble(),
                    max: duration.inSeconds.toDouble(),
                    onChanged: (double seconds) {
                      setState(() {
                        audioPlayer.seek(Duration(seconds: seconds.toInt()));
                      });
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
  Widget CreateIconButton(IconData icon, Color color, VoidCallback onPressed) {
    return IconButton(
      icon: Icon(icon), iconSize: 48, color: color, onPressed: onPressed,
    );
  }
  List<Widget> audioControls() {
    return <Widget>[
      CreateIconButton(Icons.play_arrow, Colors.green, () { audioCache.play(audio); }),
      CreateIconButton(Icons.stop, Colors.pink, () { audioPlayer.stop(); }),
      CreateIconButton(Icons.volume_up, Colors.green, () { if (vol < 1) { vol += 0.1; audioPlayer.setVolume(vol); }
      }),
      CreateIconButton(Icons.volume_down, Colors.amber, () { if (vol > 0) { vol -= 0.1; audioPlayer.setVolume(vol); }
      }),
      CreateIconButton(Icons.volume_off, Colors.purple, () { if (vol != 0) { cVolume = vol; vol = 0;
        } else { vol = cVolume; }
        audioPlayer.setVolume(vol);
      })
    ];
  }
}
