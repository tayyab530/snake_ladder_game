import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void checkForSound(int preScore, int currentScore) {
  if (currentScore < preScore)
    AudioClips().playLocal("audio");
  else if (currentScore > preScore) 
    AudioClips().playLocal("audior");
}






class AudioClips
{
   AudioCache cache2 = AudioCache();
   AudioPlayer player = AudioPlayer();

   void playLoop(String path) async {
    player = await cache2.loop('$path.mp3');
    }

   void stopLoop() {
    player?.stop();
    }

   void playLocal(String path) async {
    AudioCache cache1 = AudioCache();
    cache1.load("$path.mp3");
    cache1.play("$path.mp3");
    }
}
