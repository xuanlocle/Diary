

class chatModel{
  /**
  * Nên dùng get set, không lấy biến trực tiếp ra nha
  **/
 
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  chatModel( {this.name, this.message, this.time, this.avatarUrl});

}

/**
* Dummy data không nên để đây. Để ở class constants riêng.
**/
  List<chatModel> dummyData = [
   new chatModel(name: 'Tony',
     message: 'Hello , Welcome to Diary',
     time: '15:40',
     avatarUrl:"https://www.instagram.com/p/B58C1l8JLox/?utm_source=ig_embed"



   )
];
