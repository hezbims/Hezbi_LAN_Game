import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/common/domain/my_games.dart';
import 'package:hezbi_lan_game/common/presentation/routes/my_routes.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class JoinPermainanScreen extends StatefulWidget {
  const JoinPermainanScreen({super.key});

  @override
  State<JoinPermainanScreen> createState() => _JoinPermainanScreenState();
}

class _JoinPermainanScreenState extends State<JoinPermainanScreen> with WidgetsBindingObserver {
  var _isScanDelaying = false;
  final _scannerController = MobileScannerController(torchEnabled: false);

  @override
  void initState() {
    super.initState();
    // Start listening to lifecycle changes.
    WidgetsBinding.instance.addObserver(this);
    unawaited(_scannerController.start());
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // If the controller is not ready, do not try to start or stop it.
    // Permission dialogs can trigger lifecycle changes before the controller is ready.
    if (!_scannerController.value.isInitialized) {
      return;
    }

    switch (state) {
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
      case AppLifecycleState.paused:
        return;
      case AppLifecycleState.resumed:
        unawaited(_scannerController.start());
      case AppLifecycleState.inactive:
        unawaited(_scannerController.stop());
    }
  }

  @override
  Widget build(BuildContext context) {
    final scanWindow = Rect.fromCenter(
      center: MediaQuery.sizeOf(context).center(Offset.zero),
      width: 200,
      height: 200,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan QR Permainan'),
      ),
      body: Stack(
        children: [
          Builder(
            builder: (context) {
              final scaffoldMessangerState = ScaffoldMessenger.of(context);
              return PopScope(
                canPop: false,
                onPopInvoked: (didPop){
                  if (didPop){
                    return;
                  }
                  scaffoldMessangerState.removeCurrentSnackBar();
                  Navigator.of(context).pop();
                },
                child: MobileScanner(
                    controller: _scannerController,
                    scanWindow: scanWindow,
                    errorBuilder: (context, exception, child){
                      switch(exception.errorCode){
                        case MobileScannerErrorCode.permissionDenied:
                          return const Center(
                            child: Text(
                              'Tolong izinkan akses kamera',
                              textAlign: TextAlign.center,
                            ),
                          );
                        case MobileScannerErrorCode.unsupported:
                          return const Center(
                            child: Text(
                              'Device tidak support camera',
                              textAlign: TextAlign.center,
                            ),
                          );
                        default:
                          debugPrint(exception.toString());
                          return const Center(
                            child: Text(
                              'Terjadi kesalahan yang tidak diketahui',
                              textAlign: TextAlign.center,
                            ),
                          );
                      }

                    },
                    onDetect: (barcode) async {
                      if (_isScanDelaying) return;

                      _isScanDelaying = true;
                      Future.delayed(
                          const Duration(seconds: 3),
                              () => _isScanDelaying = false
                      );

                      try {
                        final serverAddress = barcode.barcodes.first.rawValue!;
                        final port = int.parse(serverAddress.split(':').last);
                        final gameType = MyGames.values.firstWhere((game) => game.port == port);

                        switch (gameType){
                          case MyGames.ticTacToe:
                            Navigator.of(context).pushReplacementNamed(
                              MyRoutes.ticTacToeClientGameplay,
                              arguments: serverAddress,
                            );
                        }
                      } catch (e) {
                        scaffoldMessangerState.removeCurrentSnackBar();
                        scaffoldMessangerState.showSnackBar(
                          const SnackBar(
                            content: Text('QR Code tidak valid!'),
                            duration: Duration(seconds: 3),
                          ),
                        );
                      }

                    }),
              );
            }
          ),
          _ScanWindow(
            controller: _scannerController,
            scanWindow: scanWindow,
          ),
        ],
      ),
    );
  }
}

class _ScanWindow extends StatelessWidget {
  final MobileScannerController controller;
  final Rect scanWindow;
  const _ScanWindow({
    required this.controller,
    required this.scanWindow,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (context, value, child) {
        // Not ready.
        if (!value.isInitialized ||
            !value.isRunning ||
            value.error != null ||
            value.size.isEmpty) {
          return const SizedBox();
        }

        return CustomPaint(
          painter: _ScannerOverlay(scanWindow),
        );
      },
    );
  }


}

class _ScannerOverlay extends CustomPainter {
  _ScannerOverlay(this.scanWindow);

  final Rect scanWindow;

  @override
  void paint(Canvas canvas, Size size) {
    final backgroundPath = Path()
      ..addRect(Rect.largest);
    final cutoutPath = Path()
      ..addRect(scanWindow);

    final backgroundPaint = Paint()
      ..color = Colors.black.withOpacity(0.5)
      ..style = PaintingStyle.fill
      ..blendMode = BlendMode.dstOut;

    final backgroundWithCutout = Path.combine(
      PathOperation.difference,
      backgroundPath,
      cutoutPath,
    );
    canvas.drawPath(backgroundWithCutout, backgroundPaint);

    final scanWindowBorderPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.white
      ..strokeWidth = 1.0;

    canvas.drawRect(scanWindow, scanWindowBorderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}