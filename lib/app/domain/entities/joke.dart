import 'package:equatable/equatable.dart';

/// categories : ["science"]
/// created_at : "2020-01-05 13:42:19.324003"
/// icon_url : "https://assets.chucknorris.host/img/avatar/chuck-norris.png"
/// id : "u-xwyw6rq0-dxrq1rioogg"
/// updated_at : "2020-01-05 13:42:19.324003"
/// url : "https://api.chucknorris.io/jokes/u-xwyw6rq0-dxrq1rioogg"
/// value : "Chuck Norris once roundhouse kicked someone so hard that his foot broke the speed of light, went back in time, and killed Amelia Earhart while she was flying over the Pacific Ocean."

class Joke extends Equatable {

  final List<String>? categories;
  final String? createdAt;
  final String? iconUrl;
  final String? id;
  final String? updatedAt;
  final String? url;
  final String? value;

  const Joke({
    this.categories,
    this.createdAt,
    this.iconUrl,
    this.id,
    this.updatedAt,
    this.url,
    this.value,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}
