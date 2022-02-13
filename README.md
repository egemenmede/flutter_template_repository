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
  - It is the layer that belongs to the basic components to be used in the application. You can view the "Folder Structure" title for details. animation, routes, themes etc.
- Data Layer
  - datasources: TODO (See TODO)
  - models: TODO (See TODO)
  - respositories: TODO (See TODO)
- Domain Layer
  - entities: TODO (See TODO)
  - repositories: Rest API/GraphQL etc. abstract methods. (See TODO)
  - usecases: TODO (See TODO)
- Presenatation Layer
  - blocs: TODO (See TODO)
  - views: TODO (See TODO)
  - widgets: TODO (See TODO)

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
