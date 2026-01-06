import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/chat_service.dart';
import '../models/message.dart';

final chatServiceProvider = Provider<ChatService>((ref) {
  return ChatService();
});

/// Channel-specific message stream
final messagesProvider =
    StreamProvider.family<List<Message>, String>((ref, channelName) {
  return ref.read(chatServiceProvider).messagesForChannel(channelName);
});
