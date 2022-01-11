## Official flutter package for [Pensil Community](https://www.pensil.in/)

The official Dart client for Pensil communities, a service for building communites applications.
This library can be used on any Dart project and on both mobile and web apps with Flutter. 
You can create your own community from [Pensil](https://www.pensil.in/) and use this package to create your customised flutter mobile web application.

## 🛠 Installation
#### Install from [pub.dev](https://pub.dev/)
Next step is to add pensil_community_flutter to your dependencies, to do that just open `pubspec.yaml` file and add it inside the dependencies section.

```yaml
dependencies:
  flutter:
    sdk: flutter

  pensil_community_flutter: ^[latest-version]
  
 ```
 

## 🔌 Usage

### Client setup Serverside + Clientside
If you want to use the PensilClient on your web/mobile app you need a community id. usertoken is a google authentication uid which is a optional and can be added later.

### Client API init
```dart
// Instantiate new client with a communityId and user token
// usertoken is a google authentication token(uid) received during google login.
  final pensilClient = PensilClient(communityId: '<Community id>',usertoken: '<user token>');
```  
### Configure rool level widget
Add `PensilCommunityApp` widget into your rool lavel widget and initialize its `bloc` with `PensilBloc` constructor and pass `pensilClient` in it.
```dart
class MyApp extends StatelessWidget {
  const MyApp({required this.pensilClient, Key? key}) : super(key: key);

  final PensilClient pensilClient;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Feed Demo',
      builder: (context, child) {
        return PensilCommunityApp(
          bloc: PensilBloc(client: pensilClient),
          child: child!,
        );
      },
      home: const Login(),
    );
  }
}
```
### How to authenticate a user
Currently `pensil_community_flutter` support google authentication only. To authenticate a user, pass google authentication token (uid) to package and it will return user data on successfull authentication other wise it will retun error message. Authentication works in such an way that user has no need to signup from any where. If user is a new on platform then authentication will create a new user and returns its profile data recieved from google. 
```dart
/// uid is authentication token recieved from google login
void loginWithGoogle(String uid) async {
  final pensilClient = PensilProvider.of(context).bloc.client;
  final response = await pensilClient.curentUser.loginWithGoogle(uid);
  response.fold((error) {
    /// Display error message when authentication failed
   },
   (user) {
    print(user.name);
    /* 
       // Display success message when login success
       // Navigate to community detail
       Navigator.pushReplacement(context, CommunityDetailPage.getRoute(pensilClient));
    */
  });
}
```

### How to Open community detail page 
```dart
final pensilClient = PensilProvider.of(context).bloc.client;
Navigator.pushReplacement(context, CommunityDetailPage.getRoute(pensilClient));
```

Community Detail page
```dart
class CommunityDetailPage extends StatelessWidget {
  const CommunityDetailPage({Key? key, this.communityId}) : super(key: key);

  static Route<T> getRoute<T>(PensilClient pensilClient) {
    return MaterialPageRoute(
      builder: (_) {
        return CommunityProvider(
          bloc: CommunityBloc(pensilClient: pensilClient),
          child: CommunityDetailPage(
            communityId: pensilClient.communityId,
          ),
        );
      },
    );
  }

  final String? communityId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PensilCommunityBuilder(
        errorBuilder: (_, err) {
          return Center(
            child: Text(err.message),
          );
        },
        builder: (_, Community? community) {
          return PensilGroupListView(
            communityId: communityId!,
            onGroupTileTap: (group) {
              Navigator.push(
                context,
                GroupDetailPage.getRoute(context.communityClient, group!),
              );
            },
          );
        },
      ),
    );
  }
}
```

### How to display sections of a group

```dart
/// `group` is a selected group from groups list.
final communityClient = CommunityProvider.of(this).bloc.client;
Navigator.push(context,GroupDetailPage.getRoute(communityClient, group!));                         
```
Group Detail page
```dart
class GroupDetailPage extends StatelessWidget {
  const GroupDetailPage({Key? key, required this.group}) : super(key: key);

  /// Material Route page to open Group detail
  static Route<T> getRoute<T>(CommunityClient communityClient, Group group) {
    return MaterialPageRoute(
      builder: (_) {
        return GroupProvider(
          bloc: GroupBloc(
            communityClient: communityClient,
            groupId: group.id!,
          )..addAllSections(group.sections!),
          child: GroupDetailPage(group: group),
        );
      },
    );
  }

  final Group group;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(group.name!)),
      body: PensilSectionListView(
        groupId: group.id!,
        onSectionTileTap: (section) {
          final bloc = GroupProvider.of(context).bloc;
          Navigator.push(
            context,
            SectionfeedPage.getRoute(bloc.client, section!),
          );
        },
      ),
    );
  }
}

```
### How to display section feed
Navigate to section feed.
```dart
  /// `section` is a selected section from sections list
 final groupClient = GroupProvider.of(context).bloc;
 Navigator.push(context,SectionfeedPage.getRoute(groupClient, section!));
```

Section feed
```dart
class SectionfeedPage extends StatelessWidget {
  const SectionfeedPage({Key? key, required this.section}) : super(key: key);

  static Route<T> getRoute<T>(GroupClient groupClient, Section section) {
    return MaterialPageRoute(
      builder: (_) {
        return SectionProvider(
          bloc: SectionBloc(
              groupClient: groupClient,
              sectionId: section.id!,
              type: section.sectionType),
          child: SectionfeedPage(section: section),
        );
      },
    );
  }

  final Section section;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(section.name!)),
      body: PensilSectionFeedBuilder(
        errorBuilder: (_, err) {
          return Center(
            child: Text(err.message),
          );
        },
        builder: (BuildContext context, List<Post>? community) {
          final id = SectionProvider.of(context).bloc.sectionId;
          return PensilPostFeedListView(sectionId: id);
        },
      ),
    );
  }
}

```


## Docs
This package provides two types of components
1. UI components
2. Bussiness logic components

### UI components
1) PensilCommunityApp: a root level widget which initilise the pensil client and pensil theme.
2) PensilCommunityBuilder: a widget designed to get community data to pass it to its children. 
3) PensilGroupListView: a widget to render group list of a community.
4) PensilSectionListView: a widget to render section list of a group.
5) PensilSectionFeedBuilder: a widget designed to get section feed and pass it to its children. 
6) PensilPostFeedListView: a widget to render post feed of a section.

### Bussiness logic components
1) PensilBloc: handle root level operations.
2) PensilProvider: an Inherited widget providing access to PensilBloc in the widget tree.
3) CommunityBloc: handle community level operations.
4) CommunityProvider: an Inherited widget providing access to CommunityBloc in the widget tree.
5) GroupBloc: handle group level operations.
6) GroupProvider: an Inherited widget providing access to GroupBloc in the widget tree.
7) SectionBloc: handle section level operations.
8) SectionProvider: an Inherited widget providing access to SectionBloc in the widget tree.


## Dart version requirements
This API Client project requires Dart v2.12 at a minimum.

## Example Project
There is a detailed Flutter example project in the [example](https://github.com/pensil-inc/pensil-community-flutter/tree/main/packages/pensil_community_flutter/example) folder. You can directly run and play with it.
