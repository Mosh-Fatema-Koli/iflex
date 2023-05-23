// import 'package:flutter/material.dart';
// import 'package:flutter_contacts/flutter_contacts.dart';
// import 'package:flutter_typeahead/flutter_typeahead.dart';
//
// class ContactPicker extends StatefulWidget {
//   @override
//   _ContactPickerState createState() => _ContactPickerState();
// }
//
// class _ContactPickerState extends State<ContactPicker> {
//   TextEditingController _textEditingController = TextEditingController();
//
//   late Contact _selectedContact;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Contact Picker'),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.all(16.0),
//             child: TypeAheadFormField(
//               textFieldConfiguration: TextFieldConfiguration(
//                 controller: _textEditingController,
//                 decoration: InputDecoration(
//                   labelText: 'Contact',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               suggestionsCallback: (pattern) async {
//                 var contacts = await ContactsService.getContacts();
//                 return contacts
//                     .where((contact) =>
//                 contact.displayName
//                     .toLowerCase()
//                     .contains(pattern.toLowerCase()) ||
//                     contact.phones
//                         .any((phone) => phone.value.contains(pattern)))
//                     .toList();
//               },
//               itemBuilder: (context, Contact suggestion) {
//                 return ListTile(
//                   title: Text(suggestion.displayName),
//                   subtitle: Text(suggestion.phones.isNotEmpty
//                       ? suggestion.phones.first.value
//                       : 'No phone number'),
//                 );
//               },
//               onSuggestionSelected: (Contact suggestion) {
//                 setState(() {
//                   _selectedContact = suggestion;
//                   _textEditingController.text = suggestion.displayName;
//                 });
//               },
//             ),
//           ),
//           SizedBox(height: 16.0),
//           Text(
//             _selectedContact != null
//                 ? 'Selected Contact: ${_selectedContact.displayName}'
//                 : 'No contact selected',
//           ),
//         ],
//       ),
//     );
//   }
// }