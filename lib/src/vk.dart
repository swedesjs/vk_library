part of vk_library;

/// The most important class that will create an instance of the [API] class, and others in the upcoming updates!
class VK {
  /// Instance of class [API]
  final API api;

  /// Specify the [token] parameter to access the api and work with it, if the token is not valid, the library cannot tell you this until you contact the [api] instance
  ///
  /// Specify the [version] and [language] parameters as desired for the result you want!
  VK({
    required String token,
    String version = "5.131",
    Language language = Language.RU,
  }) : api = API(token, version, language);

  /// This factory constructor is designed to parse the data specified in the file.
  ///
  /// By default, the file name should be `vk_library.yaml` (if you want the extension `json`, specify the [type] parameter with the value [VKConfigFileType.JSON])
  /// ```dart
  /// final vk = VK.configFile(type: VKConfigFileType.JSON);
  /// ```
  /// In this case, you must name your file as `vk_library.json`
  ///
  /// If you want the path to the configuration file, then specify the [path] parameter, (If you want to use JSON, do not forget to specify the [type] parameter as [VKConfigFileType.JSON])
  /// ```dart
  /// final vk = VK.configFile(path: "config.yaml");
  /// // or
  /// final vk = VK.configFile(path: "config.json", type: VKConfigFileType.JSON);
  /// ```
  /// Example use with the library [path](https://pub.dev/packages/path/):
  /// ```dart
  /// import "dart:io";
  /// import "package:path/path.dart" as p;
  ///
  /// final vk = VK.configFile(
  ///     path: p.join(
  ///       p.dirname(Platform.script.toFilePath()),
  ///       "config.yaml",
  ///     ),
  ///   );
  /// ```
  ///
  /// **Important!**
  ///
  /// - If you did not specify the [path] parameter, then the file is taken from the directory where the file was launched.
  /// - May throw exceptions such as [YamlException], [FileSystemException] and normal [VKConfigFileException]
  factory VK.configFile({
    String? path,
    VKConfigFileType type = VKConfigFileType.YAML,
  }) {
    final data = File(
      path ??
          p.join(
            p.dirname(Platform.script.toFilePath()),
            "vk_library.${type == VKConfigFileType.YAML ? "yaml" : "json"}",
          ),
    ).readAsStringSync();

    final result =
        type == VKConfigFileType.YAML ? loadYaml(data) : jsonDecode(data);

    if (result is! Map) {
      throw const VKConfigFileException(
        "The output data did not come out as a map.",
      );
    }

    final token = result["token"];

    if (token == null) {
      throw const VKConfigFileException("Token not specified!");
    }

    if (token is! String) {
      throw const VKConfigFileException("The token is not of type String.");
    }

    if (token.length != 85) {
      throw const VKConfigFileException(
        "The token must contain 85 characters!",
      );
    }

    final version = result["version"];
    if (version != null) {
      if (version is! num) {
        throw const VKConfigFileException(
          "The version field must be a number between 4 and 5.131!",
        );
      }

      if (version < 4 || version > 5.131) {
        throw const VKConfigFileException(
          "The version field must be a number between 4 and 5.131!",
        );
      }
    }

    final language = result["language"];
    if (language != null) {
      if (language is! String) {
        throw const VKConfigFileException(
          "The language parameter must be of type String!",
        );
      }
      if (languageString[language] == null) {
        throw const VKConfigFileException(
          "Indicate the languages ​​that exist for use in VK.",
        );
      }
    }

    return VK(
      token: token,
      version: result["version"]?.toString() ?? "5.131",
      language: languageString[language]!,
    );
  }
}
