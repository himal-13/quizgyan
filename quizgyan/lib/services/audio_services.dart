import 'package:audioplayers/audioplayers.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Import shared_preferences

/// A service class to manage and play various sound effects in the application.
/// This class uses the audioplayers package to play audio from assets.
class SoundService {
  // Create a single instance of AudioPlayer to manage all sound playback.
  // This helps in managing resources and preventing multiple players from
  // interfering with each other.
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isSoundEnabled = true; // Internal flag to control sound playback

  /// Private constructor to enforce a singleton pattern.
  /// This ensures that only one instance of SoundService exists throughout the app,
  /// which is good for managing audio resources centrally.
  SoundService._privateConstructor() {
    _loadSoundSetting(); // Load the sound setting when the service is initialized
  }

  // The single instance of SoundService.
  static final SoundService _instance = SoundService._privateConstructor();

  /// Factory constructor to return the singleton instance.
  /// This is the public way to get access to the SoundService.
  factory SoundService() {
    return _instance;
  }

  /// Loads the sound setting from shared preferences.
  Future<void> _loadSoundSetting() async {
    final prefs = await SharedPreferences.getInstance();
    _isSoundEnabled =
        prefs.getBool('isSoundEnabled') ?? true; // Default to true
  }

  /// Sets the sound enabled status and saves it to shared preferences.
  /// This method will be called from the SettingsPage.
  Future<void> setSoundEnabled(bool enabled) async {
    _isSoundEnabled = enabled;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isSoundEnabled', enabled);
  }

  /// Plays the 'failed.mp3' sound.
  /// This method loads the audio file from the 'assets/audio' directory
  /// and plays it, but only if sound effects are enabled.
  Future<void> playFailed() async {
    if (!_isSoundEnabled) return; // Do not play if sound is disabled
    try {
      await _audioPlayer.play(AssetSource('audio/failed.mp3'));
    } catch (e) {
      // Handle potential errors during playback
      print('Error playing failed sound: $e');
    }
  }

  /// Plays the 'gameover.mp3' sound.
  /// Similar to playFailed, this method handles the playback of the game over sound,
  /// but only if sound effects are enabled.
  Future<void> playGameOver() async {
    if (!_isSoundEnabled) return; // Do not play if sound is disabled
    try {
      await _audioPlayer.play(AssetSource('audio/gameover.mp3'));
    } catch (e) {
      // Handle potential errors during playback
      print('Error playing game over sound: $e');
    }
  }

  /// Plays the 'level-complete.mp3' sound.
  /// This method is for playing the sound indicating a level has been completed successfully,
  /// but only if sound effects are enabled.
  Future<void> playLevelComplete() async {
    if (!_isSoundEnabled) return; // Do not play if sound is disabled
    try {
      await _audioPlayer.play(AssetSource('audio/level-complete.mp3'));
    } catch (e) {
      // Handle potential errors during playback
      print('Error playing level complete sound: $e');
    }
  }

  /// Plays the 'success.mp3' sound.
  /// This method is for playing a general success sound,
  /// but only if sound effects are enabled.
  Future<void> playSuccess() async {
    if (!_isSoundEnabled) return; // Do not play if sound is disabled
    try {
      await _audioPlayer.play(AssetSource('audio/success.mp3'));
    } catch (e) {
      // Handle potential errors during playback
      print('Error playing success sound: $e');
    }
  }

  // Future<void> playClockTicking() async {
  //   try {
  //     await _audioPlayer.play(AssetSource('audio/clock.mp3'));
  //   } catch (e) {}
  // }

  /// Disposes of the audio player resources.
  /// It's crucial to call this method when the SoundService is no longer needed
  /// (e.g., when the app closes or the audio service is no longer required)
  /// to release system resources and prevent memory leaks.
  void dispose() {
    _audioPlayer.dispose();
  }
}
