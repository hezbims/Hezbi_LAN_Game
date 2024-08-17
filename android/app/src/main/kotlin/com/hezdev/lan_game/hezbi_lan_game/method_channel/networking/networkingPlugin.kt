package com.hezdev.lan_game.hezbi_lan_game.method_channel.networking

import com.hezdev.lan_game.hezbi_lan_game.method_channel.ChannelConfig
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.net.Inet4Address
import java.net.NetworkInterface


fun setupNetworkingPlugin(engine: FlutterEngine){
    MethodChannel(engine.dartExecutor.binaryMessenger, ChannelConfig.Networking.name).setMethodCallHandler{
        call, result ->
        if (call.method == ChannelConfig.Networking.methodGetHotspotPrivateIpAddress){
            try {
                val networkInterfaces = NetworkInterface
                    .getNetworkInterfaces().toList()

                val hotspotInterface = networkInterfaces.single {
                    it.displayName.contains("ap")
                }

                val hotspotIpv4Address = hotspotInterface.inetAddresses.toList().single {
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