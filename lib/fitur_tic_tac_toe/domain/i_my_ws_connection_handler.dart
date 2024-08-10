abstract class IMyWsConnectionHandler {
  void sendData(String data);
  void closeConnectionToClient(int? closeCode);
  void addOnClientDataListener({
    required void Function(dynamic data) onData,
    required void Function(Object error) onError,
  });
  void dispose();
}