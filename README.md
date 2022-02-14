# Flutter Template Repository

A Flutter Template Repository project.

## Features of Template Repository

- Clean Architecture ([See Uncle Bob Martin](http://cleancoder.com/))
- State Management ([BLoC](https://bloclibrary.dev/) - Recommended by Google Developers)
- etc. (TODO)

### Packages Used

- [retrofit](https://pub.dev/packages/retrofit)
- [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- [equatable](https://pub.dev/packages/equatable)
- etc. (TODO)

### Layers Used

- Core Layer

  It is the layer that belongs to the basic components to be used in the application. You can view the "Folder Structure" title for details. animation, routes, themes etc.

- Data Layer

  Data Layer contains Repository Implementations (repositories) and multiple "datasources" (local, remote etc.). Repositories are responsible to coordinate data from the different Data Sources. Data Layer depends on Domain Layer.

  - datasources: The data sources to receive or store the application data. (See TODO)
    - [Naming conventions](https://developer.android.com/jetpack/guide/data-layer#naming-conventions)
  - models: Models should be a subclass of the relevant entity (domain layer). (With fromJson) (See TODO)
  - respositories: Contains the Repository Implementations of the data layer. (See TODO)

- Domain Layer: 

  The basic area of Clean Architecture and Domain-Driven Design is Domain Layer. All Business and Application Rules are determined here. There are no concrete classes because of the layer that determines the rules. In this way, they work independently of infrastructure and Frameworks. Because the domain layer is responsible for encapsulation of the business logic, it is particularly used to remove complexity and support reusability. No dependencies with other layers.
  
  - entities: The "repositories" under the Domain layer contain the entities of the rules set with the abstract methods. These entities will also be used by extending to the creation of models under the Data layer. (Without fromJson) (See TODO)
    - Naming conventions: Names should be in UpperCamelCase 
  - repositories: Rest API/GraphQL etc. abstract methods. (See TODO)
    - [Naming conventions](https://developer.android.com/jetpack/guide/data-layer#naming-conventions)
  - usecases: The application is the area where business rules are identified. (See TODO)
    - [Naming conventions](https://developer.android.com/jetpack/guide/domain-layer#conventions)

- Presenatation Layer

  Presentation Layer contains UI that is coordinated by Presenters which execute one or multiple Use cases. Presentation Layer depends on Domain Layer.

  - blocs: TODO (See TODO)
  - views: TODO (See TODO)
  - widgets: TODO (See TODO)

### File Templates for Data Layer

- Model File Template (data>models>..) [Example File](https://github.com/egemenmede/flutter_template_repository/blob/main/lib/app/data/models/entity_model.dart)

```dart
class EntityModel extends Entity{
  EntityModel({
    String? value,}){
    _value = value;
  }

  EntityModel.fromJson(dynamic json) {
    _value = json['value'];
  }
  String? _value;

  @override
  String? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['value'] = _value;
    return map;
  }
}
```

### File Templates for Domain Layer

- Entity File Template (domain>entities>..) [Example File](https://github.com/egemenmede/flutter_template_repository/blob/main/lib/app/domain/entities/entity.dart)

```dart
class Entity {
  final String? value;

  const Entity({
    this.value,
  });
}
```

- Repository File Template (domain>repositories>..) [Example File](https://github.com/egemenmede/flutter_template_repository/blob/main/lib/app/domain/repositories/repo_name_repository.dart)

```dart
abstract class RepoNameRepository {
  //Future<ModelName> getModelData(String value);
  Future<String> getData(String value);
  Future<bool> getStatus(String check);
}
```

### Folder Structure
Flutter app core folder structure

```
├── ...
├── lib                     	# Flutter project root
│   └── app                 	# Source of project
│   	├── core              	# Project core functionalities
│   	│   ├── animation       # 
│   	│   ├── routes          # 
│   	│   ├── themes          # 
│   	│   ├── usecase         # 
│   	│   ├── utils           # 
│   	│   └── ...             # etc.
│   	├── data                # All data files/folders
│   	│   ├── datasources     # 
│   	│   ├── models          # 
│   	│   └── repositories    # 
│   	├── domain              # All domain files/folders
│   	│   ├── entities        # 
│   	│   ├── repositories    # 
│   	│   └── usecases        # 
│   	├── presentation        # All presentation files/folders
│   	│   ├── blocs           # 
│   	│   ├── views           # 
│   	│   └── widgets         # 
│   	├── main.dart           # Start point
│   	└── ...                 # etc.
└── ...
```
