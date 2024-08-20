abstract class IMyWsConnectionHandler {
  void sendData(String data);
  Future<void> closeConnection(int? closeCode);
  void addOnClientDataListener({
    required void Function(dynamic data) onData,
    required void Function(Object error) onError,
    required void Function(int? closeCode, String? closeReason) onDone,
  });
  Future<void> dispose();
}