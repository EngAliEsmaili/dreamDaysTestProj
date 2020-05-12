class ExperiencesModel
{
  final String icon ;
  final String name ;
  final String type ;
  final String price ;
  var images ;
  final String status ;
  final String videos ;
  final String qr_code ;
  final String to_know ;
  final String category ;
  final String currency ;
  final String duration ;
  final String reference ;
   var passengers ;
  final String short_name ;
  final String start_time ;
  final String description ;
  final String youtube_video ;
  final String short_description ;
  final String date ;
  final String time ;

  ExperiencesModel({this.icon, this.name, this.type, this.price, this.images,
      this.status, this.videos, this.qr_code, this.to_know, this.category,
      this.currency, this.duration, this.reference, this.passengers,
      this.short_name, this.start_time, this.description, this.youtube_video,
      this.short_description, this.date, this.time });
  factory ExperiencesModel.fromJson(Map<String , dynamic> json)
  {
    return ExperiencesModel(
      category: json['category'],
      currency: json['currency'],
      date: json['date'],
      description: json['description'],
      duration: json['duration'],
      icon: json['icon'],
      images: json['images'],
      name: json['name'],
      passengers: json['passengers'],
      price: json['price'],
      qr_code: json['qr_code'],
      reference: json['reference'],
      short_description: json['short_description'],
      short_name: json['short_name'],
      start_time: json['start_time'],
      status: json['status'],
      time: json['time'],
      to_know: json['to_know'],
      type: json['type'],
      videos: json['videos'],
      youtube_video: json['youtube_video'],
    );
  }
}