import 'package:equatable/equatable.dart';

class Entity extends Equatable {
  const Entity({
    required this.value,
  });

  final String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
