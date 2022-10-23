import 'package:audioplayer2/audioplayer2.dart';
import 'package:radio_flutter_example/model/radio_record_channel.dart';
import 'package:radio_flutter_example/model/radio_record_channel_name.dart';

class RadioRecordPlayer {
  AudioPlayer _player = AudioPlayer();
  RadioRecordChannel channel;

  RadioRecordPlayer() {
    channel = RadioRecordChannel();
    channel.radioRecordChannelName = RadioRecordChannelName.PHONK;
  }

  void play(RadioRecordChannel channelName) {
    channel = channelName;
    _player.play(channelName.urlToAudioStream);
  }

  void pause() => _player.pause();

  void stop() => _player.stop();
}
