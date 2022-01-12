## Official Core package for [Pensil Community](https://www.pensil.in/)


[![pub package](https://img.shields.io/pub/v/pensil_community_core?color=green)](https://pub.dev/packages/pensil_community_core) 
[![Likes](https://badges.bar/pensil_community_core/likes)](https://pub.dev/packages/pensil_community_core/score)
[![Popularity](https://badges.bar/pensil_community_core/popularity)](https://pub.dev/packages/pensil_community_core/score)
[![Pub points](https://badges.bar/pensil_community_core/pub%20points)](https://pub.dev/packages/pensil_community_core/score)
![GitHub last commit](https://img.shields.io/github/last-commit/pensil-inc/pensil-community-flutter) 
[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fpensil-inc%2Fpensil-community-flutter%2Fedit%2Fmain%2Fpackages%2Fpensil_community_core&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false)](https://hits.seeyoufarm.com)

The official Dart core package for Pensil communities, a service for building communites applications.
This library can be used on any Dart project and on both mobile and web apps with Flutter. 
You can create your own community from [Pensil](https://www.pensil.in/) and use this package to create your customised flutter mobile web application.

> The official Flutter core components for Pensil Communities, a service for
> building communities.

## 🛠 Installation
#### Install from [pub.dev](https://pub.dev/)
Next step is to add pensil_community_flutter to your dependencies, to do that just open `pubspec.yaml` file and add it inside the dependencies section.

```yaml
dependencies:
  flutter:
    sdk: flutter

  pensil_community_core: ^[latest-version]
  
 ```
  
Then run `flutter packages get`

This package requires no custom setup on any platform since it does not depend on any platform-specific dependency.


## Usage

This package provides business logic to fetch common things required for integrating pensil communities into your application.
The core package allows more customisation and hence provides business logic but no UI components.


## Docs

This package provides business logic to fetch common things required for integrating pensil communities into your application.
The core package allows more customisation and hence provides business logic but no UI components.

The package primarily contains three types of classes:

1) Business Logic Components
2) Core Components

### Business Logic Components

These components allow you to have the maximum and lower-level control
The Client we provide are:
1) PensilClient: root level client
2) CommunityClient: manage community level operations 
3) GroupClient: manage group level operations
4) SectionClient: manage section level operations.


### Core Components
Core components usually are an easy way to fetch data associated with community which are decoupled from UI and often expose UI builders.
Data fetching can be controlled with the controllers of the respective core components.

