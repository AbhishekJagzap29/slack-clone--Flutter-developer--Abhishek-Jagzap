class Message {
  final String text;
  final String sender;
  final DateTime time;
  final String? replyTo;

  // ✅ Emoji -> Count (👍 : 2)
  final Map<String, int> reactions;

  Message({
    required this.text,
    required this.sender,
    required this.time,
    this.replyTo,
    Map<String, int>? reactions,
  }) : reactions = reactions ?? {};

  Message copyWith({
    String? text,
    String? sender,
    DateTime? time,
    String? replyTo,
    Map<String, int>? reactions,
  }) {
    return Message(
      text: text ?? this.text,
      sender: sender ?? this.sender,
      time: time ?? this.time,
      replyTo: replyTo ?? this.replyTo,
      reactions: reactions ?? this.reactions,
    );
  }
}
