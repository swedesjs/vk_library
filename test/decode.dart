import "dart:convert" show jsonDecode;
import "dart:mirrors" show ClassMirror;

Map<String, dynamic> decode(ClassMirror reflect, Map<String, dynamic> params) =>
    jsonDecode(
      reflect
          .newInstance(const Symbol(""), const [], _instance(params))
          .reflectee
          .toString(),
    );

Map<Symbol, dynamic> _instance(Map<String, dynamic> params) {
  return params.map(
    (key, value) => MapEntry(
      Symbol(
        key.replaceAllMapped(
          RegExp(r"_([a-z])"),
          (match) => match[1]!.toUpperCase(),
        ),
      ),
      value,
    ),
  );
}
