// import 'package:flutter/material.dart';

// class CheckOutPage extends StatelessWidget {
//   const CheckOutPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             'We will deliver in\n24 minutes to the address:',
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 8),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const Text('100a Ealing Rd', style: TextStyle(fontSize: 16)),
//               TextButton(
//                 onPressed: () {},
//                 child: const Text('Change address'),
//               ),
//             ],
//           ),
//           const Divider(),
//           const SizedBox(height: 16),
//           Row(
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(8),
//                 child: Image.asset(
//                   'assets/images/Pizza.png',
//                   height: 60,
//                   width: 60,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               const SizedBox(width: 16),
//               const Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Poke with chicken and corn',
//                       style:
//                           TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 4),
//                     Text('\$47.00', style: TextStyle(fontSize: 16)),
//                   ],
//                 ),
//               ),
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () {}, // Decrease quantity
//                     icon: const Icon(Icons.remove_circle_outline),
//                   ),
//                   const Text('1', style: TextStyle(fontSize: 16)),
//                   IconButton(
//                     onPressed: () {}, // Increase quantity
//                     icon: const Icon(Icons.add_circle_outline),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           const Divider(),
//           const SizedBox(height: 16),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const Text('Cutlery', style: TextStyle(fontSize: 16)),
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () {},
//                     icon: const Icon(Icons.remove_circle_outline),
//                   ),
//                   const Text('1', style: TextStyle(fontSize: 16)),
//                   IconButton(
//                     onPressed: () {},
//                     icon: const Icon(Icons.add_circle_outline),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           const Divider(),
//           const SizedBox(height: 16),
//           const Text('Delivery', style: TextStyle(fontSize: 16)),
//           const SizedBox(height: 4),
//           const Text('Free delivery from \$30',
//               style: TextStyle(color: Colors.grey)),
//           const SizedBox(height: 24),
//           const Text('Payment method', style: TextStyle(fontSize: 16)),
//           const SizedBox(height: 8),
//           Row(
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.grey),
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//                 child: const Row(
//                   children: [
//                     Icon(Icons.apple, size: 24),
//                     SizedBox(width: 8),
//                     Text('Apple Pay', style: TextStyle(fontSize: 16)),
//                   ],
//                 ),
//               ),
//               const Spacer(),
//               const Icon(Icons.arrow_forward_ios, size: 16),
//             ],
//           ),
//           const Spacer(),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
//                 ),
//                 onPressed: () {}, // Handle payment
//                 child: const Text('Pay', style: TextStyle(color: Colors.white)),
//               ),
//               const Text('24 min   \$47.00', style: TextStyle(fontSize: 16)),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
