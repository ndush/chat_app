import 'package:chat_app/features/message/widgets/build_chat_message.dart';
import 'package:flutter/material.dart';

class BuildChatMessage extends StatelessWidget {
  final ChatMessage message;

  const BuildChatMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final Color messageColor =
    message.type == ChatType.sender ? Colors.green.shade50 : Colors.white;
    final Color textColor = message.type == ChatType.sender ? Colors.black : Colors.black;
    return Column(
      crossAxisAlignment:
      message.type == ChatType.sender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Align(
          alignment:
          message.type == ChatType.sender ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: messageColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message.message,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  message.time,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ChatMessagesList extends StatelessWidget {
  const ChatMessagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 16),
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return BuildChatMessage(message: messages[index]);
        },
      ),
    );
  }
}

class MessageView extends StatelessWidget {
  const MessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        title: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/d-min.jpg'),
                radius: 20,
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  "Anaya Sanji",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
        ],
      ),
      body: const Column(
        children: [
          ChatMessagesList(),
          BottomAppBar(color: Colors.white, child: MessageInput()),
        ],
      ),
    );
  }
}

class ChatMessage {
  final String message;
  final String time;
  final ChatType type;

  ChatMessage({
    required this.message,
    required this.type,
    required this.time,
  });
}

enum ChatType {
  sender,
  receiver,
}

List<ChatMessage> messages = [
  ChatMessage(
    message: "Hi Anaya!",
    time: "12:00 PM",
    type: ChatType.sender,
  ),
  ChatMessage(
    message: "Hello!",
    time: "12:01 PM",
    type: ChatType.receiver,
  ),
  ChatMessage(
    message: "How are you?",
    time: "12:02 PM",
    type: ChatType.sender,
  ),
  ChatMessage(
    message: "I'm fine, thanks!",
    time: "12:03 PM",
    type: ChatType.receiver,
  ),
  ChatMessage(
    message: "Nice to hear!",
    time: "12:04 PM",
    type: ChatType.sender,
  ),
  ChatMessage(
    message: "Goodbye!",
    time: "12:06 PM",
    type: ChatType.receiver,
  ),
];

void main() {
  runApp(const MaterialApp(
    home: MessageView(),
  ));
}
