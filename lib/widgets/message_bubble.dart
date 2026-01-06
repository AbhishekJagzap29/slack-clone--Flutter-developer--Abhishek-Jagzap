// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import '../models/message.dart';

// class MessageBubble extends StatelessWidget {
//   final Message message;
//   final bool isMe;
//   final VoidCallback onReply;
//   final Function(String emoji) onReaction;

//   const MessageBubble({
//     super.key,
//     required this.message,
//     required this.isMe,
//     required this.onReply,
//     required this.onReaction,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onLongPress: () => _showEmojiPicker(context),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 6),
//         child: Align(
//           alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
//           child: Column(
//             crossAxisAlignment:
//                 isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
//             children: [
//               // Reply preview
//               if (message.replyTo != null)
//                 Container(
//                   margin: const EdgeInsets.only(bottom: 4),
//                   padding: const EdgeInsets.all(6),
//                   decoration: BoxDecoration(
//                     color: Colors.grey.shade300,
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                   child: Text(
//                     message.replyTo!,
//                     style: const TextStyle(fontSize: 11),
//                   ),
//                 ),

//               // Message bubble
//               Container(
//                 constraints: BoxConstraints(
//                   maxWidth: MediaQuery.of(context).size.width * 0.75,
//                 ),
//                 padding: const EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   color: isMe ? Colors.blue.shade100 : Colors.grey.shade200,
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     if (!isMe)
//                       Text(
//                         message.sender,
//                         style: const TextStyle(
//                           fontSize: 11,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     Text(message.text),
//                     const SizedBox(height: 4),
//                     Text(
//                       DateFormat('hh:mm a').format(message.time),
//                       style: const TextStyle(
//                         fontSize: 9,
//                         color: Colors.grey,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               // Reactions
//               if (message.reactions.isNotEmpty)
//                 Padding(
//                   padding: const EdgeInsets.only(top: 4),
//                   child: Text(
//                     message.reactions.join(' '),
//                     style: const TextStyle(fontSize: 14),
//                   ),
//                 ),

//               // Reply action
//               TextButton(
//                 onPressed: onReply,
//                 child: const Text(
//                   'Reply',
//                   style: TextStyle(fontSize: 11),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void _showEmojiPicker(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       builder: (_) => Padding(
//         padding: const EdgeInsets.all(12),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: ['👍', '❤️', '😂', '🔥'].map((emoji) {
//             return IconButton(
//               icon: Text(emoji, style: const TextStyle(fontSize: 24)),
//               onPressed: () {
//                 onReaction(emoji);
//                 Navigator.pop(context);
//               },
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
