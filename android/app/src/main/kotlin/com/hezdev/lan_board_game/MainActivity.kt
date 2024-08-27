package com.hezdev.lan_board_game

import com.hezdev.lan_board_game.method_channel.networking.setupNetworkingPlugin
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        setupNetworkingPlugin(flutterEngine)
    }
}
