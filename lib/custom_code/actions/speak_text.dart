// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Add your additional imports here
import 'package:flutter_tts/flutter_tts.dart';

// Initialize the FlutterTts instance
FlutterTts flutterTts = FlutterTts();

Future<void> speakText(String text) async {
  // Set TTS language to Swedish
  await flutterTts.setLanguage("sv-SE");

  // Optionally set the voice to a female voice if available
  List<dynamic> voices = await flutterTts.getVoices;
  for (var voice in voices) {
    if (voice['name'].toString().contains("sv-") &&
        voice['gender'] == "female") {
      await flutterTts.setVoice(voice);
      break;
    }
  }

  // Set speech rate
  await flutterTts.setSpeechRate(0.5);

  // Set pitch
  await flutterTts.setPitch(1.0);

  // Speak the provided text
  await flutterTts.speak(text);
}

// The Custom Action method
Future<void> speak(String text) async {
  try {
    await speakText(text);
  } catch (e) {
    print("Error: $e");
  }
}
