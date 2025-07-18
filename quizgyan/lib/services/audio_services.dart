// lib/services/sound_service.dart

import 'package:audioplayers/audioplayers.dart';

/// A service class to manage and play various sound effects in the application.
/// This class uses the audioplayers package to play audio from assets.
class SoundService {
  // Create a single instance of AudioPlayer to manage all sound playback.
  // This helps in managing resources and preventing multiple players from
  // interfering with each other.
  final AudioPlayer _audioPlayer = AudioPlayer();

  /// Private constructor to enforce a singleton pattern.
  /// This ensures that only one instance of SoundService exists throughout the app,
  /// which is good for managing audio resources centrally.
  SoundService._privateConstructor();

  // The single instance of SoundService.
  static final SoundService _instance = SoundService._privateConstructor();

  /// Factory constructor to return the singleton instance.
  /// This is the public way to get access to the SoundService.
  factory SoundService() {
    return _instance;
  }

  /// Plays the 'failed.mp3' sound.
  /// This method loads the audio file from the 'assets/audio' directory
  /// and plays it. Error handling is included to catch potential issues
  /// during playback.
  Future<void> playFailed() async {
    try {
      await _audioPlayer.play(AssetSource('audio/failed.mp3'));
    } catch (e) {}
  }

  /// Plays the 'gameover.mp3' sound.
  /// Similar to playFailed, this method handles the playback of the game over sound.
  Future<void> playGameOver() async {
    try {
      await _audioPlayer.play(AssetSource('audio/gameover.mp3'));
    } catch (e) {}
  }

  /// Plays the 'level-complete.mp3' sound.
  /// This method is for playing the sound indicating a level has been completed successfully.
  Future<void> playLevelComplete() async {
    try {
      await _audioPlayer.play(AssetSource('audio/level-complete.mp3'));
    } catch (e) {}
  }

  /// Plays the 'success.mp3' sound.
  /// This method is for playing a general success sound.
  Future<void> playSuccess() async {
    try {
      await _audioPlayer.play(AssetSource('audio/success.mp3'));
    } catch (e) {}
  }

  /// Disposes of the audio player resources.
  /// It's crucial to call this method when the SoundService is no longer needed
  /// (e.g., when the app closes or the audio service is no longer required)
  /// to release system resources and prevent memory leaks.
  void dispose() {
    _audioPlayer.dispose();
  }
}
