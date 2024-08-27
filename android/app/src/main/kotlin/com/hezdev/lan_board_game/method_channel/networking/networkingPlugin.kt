package com.hezdev.lan_board_game.method_channel.networking

import com.hezdev.lan_board_game.method_channel.ChannelConfig
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.net.Inet4Address
import java.net.NetworkInterface


fun setupNetworkingPlugin(engine: FlutterEngine){
    MethodChannel(engine.dartExecutor.binaryMessenger, ChannelConfig.Networking.name).setMethodCallHandler{
        call, result ->
        if (call.method == ChannelConfig.Networking.methodGetLanIpv4Address){
            try {
                val networkInterfaces = NetworkInterface
                    .getNetworkInterfaces().toList()

                // Mencari salah satu network interface untuk hotspot atau wi-fi
                val lanInterface = networkInterfaces.first {
                    val interfaceName = it.displayName
                    interfaceName.contains("ap") || interfaceName.contains("wl")
                }

                val hotspotIpv4Address = lanInterface.inetAddresses.toList().single {
                    !it.isLoopbackAddress && it is Inet4Address
                }

                result.success(hotspotIpv4Address.hostAddress)
            } catch (e: Throwable) {
                result.success(null)
            }
        } else {
            result.notImplemented()
        }

    }
}