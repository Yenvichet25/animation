import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconsPage {
  final dynamic iconsname;

  IconsPage({this.iconsname});
}

List<IconsPage> icons = [
  IconsPage(iconsname: FontAwesomeIcons.qrcode),
  IconsPage(iconsname: FontAwesomeIcons.box),
  IconsPage(iconsname: FontAwesomeIcons.store),
  IconsPage(iconsname: FontAwesomeIcons.caretSquareUp),
  IconsPage(iconsname: FontAwesomeIcons.user)
];

class LeadingIcons{
  final dynamic leadingname;

  LeadingIcons({this.leadingname});
}
List<LeadingIcons> leadingicons=[
  LeadingIcons(leadingname: FontAwesomeIcons.bookMedical),
  LeadingIcons(leadingname: FontAwesomeIcons.solidAddressBook),
  LeadingIcons(leadingname: FontAwesomeIcons.cogs),
  LeadingIcons(leadingname: FontAwesomeIcons.galacticSenate),
  LeadingIcons(leadingname: FontAwesomeIcons.userCheck)

];
