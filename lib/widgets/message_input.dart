// import 'package:flutter/material.dart';

// class MessageInput extends StatelessWidget {
//   final TextEditingController controller;
//   final VoidCallback onSend;
//   final VoidCallback onTyping;

//   const MessageInput({
//     super.key,
//     required this.controller,
//     required this.onSend,
//     required this.onTyping,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//         decoration: const BoxDecoration(
//           border: Border(
//             top: BorderSide(color: Colors.black12),
//           ),
//         ),
//         child: Row(
//           children: [
//             Expanded(
//               child: TextField(
//                 controller: controller,
//                 decoration: const InputDecoration(
//                   hintText: 'Message #channel',
//                   border: InputBorder.none,
//                 ),
//                 onChanged: (_) => onTyping(),
//                 onSubmitted: (_) => onSend(),
//               ),
//             ),
//             IconButton(
//               icon: const Icon(Icons.send),
//               onPressed: onSend,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
