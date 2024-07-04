
// class MyDrawerList extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final Press;
//   const MyDrawerList({
//     Key? key,
//     required this.title,
//     this.Press,
//     required this.icon,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       splashColor: Colors.blueAccent,
//       onTap: Press,
//       child: SizedBox(
//         // height: 80,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Padding(
//               padding: const EdgeInsets.fromLTRB(25, 10, 25, 15),
//               child: Row(
//                 children: [
//                   Icon(
//                     icon,
//                     color: kImageColor,
//                     size: 28,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
//                     child: Text(
//                       title,
//                       style: TextStyle(
//                         fontSize: 15,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             //Icon(Icons.arrow_right),
//           ],
//         ),
//       ),
//     );
//   }
// }
