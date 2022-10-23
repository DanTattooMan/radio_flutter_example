import 'package:radio_flutter_example/model/radio_record_channel.dart';
import 'package:radio_flutter_example/model/radio_record_channel_name.dart';
import 'package:radio_flutter_example/model/radio_record_player.dart';
import 'package:radio_flutter_example/model/radio_record_song.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RadioRecordSongProvider {
  Map<RadioRecordChannelName, RadioRecordChannel> _radioRecordChannels;
  RadioRecordChannelName _currentChannel;
  RadioRecordSong _currentSong;
RadioRecordSongProvider() {
    _initSongMap();
    _initCurrentChannel();
      }
      Map<RadioRecordChannelName, RadioRecordChannel>get radioRecordChannels =>_radioRecordChannels;
    
      RadioRecordSong get currentSong => _currentSong!=null?_currentSong:RadioRecordSong();
    
      RadioRecordChannel getCurrentChannel() => _radioRecordChannels[_currentChannel];

      set currentChannel(RadioRecordChannelName value) {
        _currentChannel = value;
        updateSongByCurrentChannel();
      }
    
void updateSongByCurrentChannel() async {
  RadioRecordChannel channel = _radioRecordChannels[_currentChannel];
  // http.Response response = await http.get(channel.urlToInfo);
  // _currentSong = _parseIntoHttpResponse(response);

}

    RadioRecordSong _parseIntoHttpResponse(http.Response httpResponse) {
        String httpResponseBody = httpResponse.body;
        Map songMap=json.decode(httpResponseBody);
        return RadioRecordSong.fromJson(songMap);
      }

void _initCurrentChannel() {
        _currentChannel = RadioRecordChannelName.BREAKS;
      }

      _initSongMap() {
        _radioRecordChannels = Map();
RadioRecordChannel radioPhonkChannel = RadioRecordChannel();
        radioPhonkChannel.channelName = 'Phonk';
        radioPhonkChannel.urlToAudioStream = 'http://hls-01-radiorecord.hostingradio.ru/record-phonk/playlist.m3u8';
        radioPhonkChannel.radioRecordChannelName = RadioRecordChannelName.PHONK;
        _radioRecordChannels[RadioRecordChannelName.PHONK] = radioPhonkChannel;

        RadioRecordChannel radioFukoChannel = RadioRecordChannel();
        radioFukoChannel.channelName = 'Маятник Фуко';
        radioFukoChannel.urlToAudioStream = 'http://hls-01-radiorecord.hostingradio.ru/record-mf/playlist.m3u8';
        radioFukoChannel.radioRecordChannelName = RadioRecordChannelName.FUKO;
        _radioRecordChannels[RadioRecordChannelName.FUKO] = radioFukoChannel;

        RadioRecordChannel radioNeuroChannel = RadioRecordChannel();
        radioNeuroChannel.channelName = 'Neurofunk';
        radioNeuroChannel.urlToAudioStream = 'http://hls-01-radiorecord.hostingradio.ru/record-neurofunk/playlist.m3u8';
        radioNeuroChannel.radioRecordChannelName = RadioRecordChannelName.NEURO;
        _radioRecordChannels[RadioRecordChannelName.NEURO] = radioNeuroChannel;

        RadioRecordChannel radioPiratChannel = RadioRecordChannel();
        radioPiratChannel.channelName = 'Pirat Station';
       radioPiratChannel.urlToAudioStream = 'http://hls-01-radiorecord.hostingradio.ru/record-ps/playlist.m3u8';
        radioPiratChannel.radioRecordChannelName = RadioRecordChannelName.PIRAT;
        _radioRecordChannels[RadioRecordChannelName.PIRAT] = radioPiratChannel;

        RadioRecordChannel radioBreaksChannel = RadioRecordChannel();
        radioBreaksChannel.channelName = 'Breaks';
        radioBreaksChannel.urlToAudioStream = 'http://hls-01-radiorecord.hostingradio.ru/record-brks/playlist.m3u8';
        radioBreaksChannel.radioRecordChannelName = RadioRecordChannelName.BREAKS;
        _radioRecordChannels[RadioRecordChannelName.BREAKS] = radioBreaksChannel;

        RadioRecordChannel radioTrapChannel = RadioRecordChannel();
        radioTrapChannel.channelName = 'Trap';
        radioTrapChannel.urlToAudioStream = 'http://hls-01-radiorecord.hostingradio.ru/record-trap/playlist.m3u8';
        radioTrapChannel.radioRecordChannelName = RadioRecordChannelName.TRAP;
        _radioRecordChannels[RadioRecordChannelName.TRAP] = radioTrapChannel;
    
        RadioRecordChannel radioChillOutChannel = RadioRecordChannel();
        radioChillOutChannel.channelName = 'Chill out';
        radioChillOutChannel.urlToAudioStream = 'http://hls-01-radiorecord.hostingradio.ru/record-chil/playlist.m3u8';
        radioChillOutChannel.radioRecordChannelName = RadioRecordChannelName.CHILL;
        _radioRecordChannels[RadioRecordChannelName.CHILL] = radioChillOutChannel;

        RadioRecordChannel radioTranceChannel = RadioRecordChannel();
        radioTranceChannel.channelName = 'Trancemission';
        radioTranceChannel.urlToAudioStream = 'http://hls-01-radiorecord.hostingradio.ru/record-tm/playlist.m3u8';
        radioTranceChannel.radioRecordChannelName = RadioRecordChannelName.TRANCEMISSION;
        _radioRecordChannels[RadioRecordChannelName.TRANCEMISSION] = radioTranceChannel;

        RadioRecordChannel radioRussianMixChannel = RadioRecordChannel();
        radioRussianMixChannel.channelName = 'Russian Mix';
        radioRussianMixChannel.urlToAudioStream = 'http://hls-01-radiorecord.hostingradio.ru/record-rus/playlist.m3u8';
        radioRussianMixChannel.radioRecordChannelName = RadioRecordChannelName.RUSSIANMIX;
        _radioRecordChannels[RadioRecordChannelName.RUSSIANMIX] = radioRussianMixChannel;

        RadioRecordChannel radioDeepChannel = RadioRecordChannel();
        radioDeepChannel.channelName = 'Deep';
        radioDeepChannel.urlToAudioStream = 'http://hls-01-radiorecord.hostingradio.ru/record-deep/playlist.m3u8';
        radioDeepChannel.radioRecordChannelName = RadioRecordChannelName.DEEP;
        _radioRecordChannels[RadioRecordChannelName.DEEP] = radioDeepChannel;

        RadioRecordChannel radioRaphitsChannel = RadioRecordChannel();
        radioRaphitsChannel.channelName = 'Rap Hits';
       radioRaphitsChannel.urlToAudioStream = 'http://hls-01-radiorecord.hostingradio.ru/record-rap/playlist.m3u8';
        radioRaphitsChannel.radioRecordChannelName = RadioRecordChannelName.RAPHITS;
        _radioRecordChannels[RadioRecordChannelName.RAPHITS] = radioRaphitsChannel;

        RadioRecordChannel radioRockChannel = RadioRecordChannel();
        radioRockChannel.channelName = 'Рок';
       radioRockChannel.urlToAudioStream = 'http://hls-01-radiorecord.hostingradio.ru/record-rock/playlist.m3u8';
        radioRockChannel.radioRecordChannelName = RadioRecordChannelName.ROCK;
        _radioRecordChannels[RadioRecordChannelName.ROCK] = radioRockChannel;

        RadioRecordChannel radioHipeChannel = RadioRecordChannel();
        radioHipeChannel.channelName = 'На Хайпе';
        radioHipeChannel.urlToAudioStream = 'http://hls-01-radiorecord.hostingradio.ru/record-hype/playlist.m3u8';
        radioHipeChannel.radioRecordChannelName = RadioRecordChannelName.HIPE;
        _radioRecordChannels[RadioRecordChannelName.HIPE] = radioHipeChannel;

        RadioRecordChannel radioChocoChannel = RadioRecordChannel();
        radioChocoChannel.channelName = 'Шоколад';
        radioChocoChannel.urlToAudioStream = 'http://choco.hostingradio.ru:10010/fm';
        radioChocoChannel.radioRecordChannelName = RadioRecordChannelName.CHOCO;
        _radioRecordChannels[RadioRecordChannelName.CHOCO] = radioChocoChannel;

        RadioRecordChannel radioNesluchChannel = RadioRecordChannel();
        radioNesluchChannel.channelName = 'Неслучайное';
        radioNesluchChannel.urlToAudioStream = 'http://aska.ru-hoster.com:8006/stream';
        radioNesluchChannel.radioRecordChannelName = RadioRecordChannelName.NESLUCH;
        _radioRecordChannels[RadioRecordChannelName.NESLUCH] = radioNesluchChannel;
      }
    
      

      
}
