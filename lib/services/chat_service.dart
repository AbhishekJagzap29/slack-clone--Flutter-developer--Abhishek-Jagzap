import 'dart:async';
import '../models/message.dart';

class ChatService {
  final Map<String, List<Message>> _channelMessages = {};
  final Map<String, StreamController<List<Message>>> _controllers = {};
  final Map<String, int> _unreadCounts = {};

  String? _replyingTo;
  String? _activeChannel;

  // ---------------- Workspace / Channel State ----------------

  void setActiveChannel(String channel) {
    _activeChannel = channel;
    _unreadCounts[channel] = 0; // reset unread
  }

  int getUnreadCount(String channel) {
    return _unreadCounts[channel] ?? 0;
  }

  // ---------------- Messages ----------------

  Stream<List<Message>> messagesForChannel(String channel) {
    _controllers.putIfAbsent(
      channel,
      () => StreamController<List<Message>>.broadcast(),
    );

    _channelMessages.putIfAbsent(channel, () => []);
    _unreadCounts.putIfAbsent(channel, () => 0);

    return _controllers[channel]!.stream;
  }

  String? get replyingTo => _replyingTo;

  void setReply(String text) {
    _replyingTo = text;
  }

  void clearReply() {
    _replyingTo = null;
  }

  void sendMessage(String channel, String text) {
    final message = Message(
      text: text,
      sender: 'You',
      time: DateTime.now(),
      replyTo: _replyingTo,
    );

    _channelMessages[channel]!.add(message);
    _controllers[channel]!.add(
      List.from(_channelMessages[channel]!),
    );

    // Increment unread for non-active channels
    if (_activeChannel != channel) {
      _unreadCounts[channel] = (_unreadCounts[channel] ?? 0) + 1;
    }

    _replyingTo = null;
  }

  void addReaction(String channel, int index, String emoji) {
    final msg = _channelMessages[channel]![index];
    _channelMessages[channel]![index] =
        msg.copyWith(reactions: [...msg.reactions, emoji]);

    _controllers[channel]!.add(
      List.from(_channelMessages[channel]!),
    );
  }
}
