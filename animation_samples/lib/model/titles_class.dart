class TitlePageView{
  final String titlename;

  TitlePageView({this.titlename});
}
List<TitlePageView> iconsTitles=[
  TitlePageView(titlename: 'Scan QR Code'),
  TitlePageView(titlename: 'Stock'),
  TitlePageView(titlename: 'Products'),
  TitlePageView(titlename: 'Category'),
  TitlePageView(titlename: 'Account'),
  
];

class DrawerTitle{
  final String menuname;

  DrawerTitle({this.menuname});
}
List<DrawerTitle> drawertitle=[
  DrawerTitle(menuname: 'បន្ថែមទំនិញ'),
  DrawerTitle(menuname: 'ប្រភេទទំនិញ'),
  DrawerTitle(menuname: 'ការកំណត់'),
  DrawerTitle(menuname: 'វាយតម្លៃកម្មវិធី'),
  DrawerTitle(menuname: 'អំពីយើង')
];