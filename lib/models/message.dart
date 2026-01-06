class Message {
  final String text;
  final String sender;
  final DateTime time;
  final String? replyTo;
  final List<String> reactions;

  Message({
    required this.text,
    required this.sender,
    required this.time,
    this.replyTo,
    this.reactions = const [],
  });

  Message copyWith({
    String? text,
    String? sender,
    DateTime? time,
    String? replyTo,
    List<String>? reactions,
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
