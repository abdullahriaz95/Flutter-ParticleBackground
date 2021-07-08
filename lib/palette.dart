import 'dart:ui';

/// Holds a list of colors.
class Palette {
  /// The palette's color members. All unique.
  final List<Color> components;

  Palette({required this.components});

  /// Creates a new palette from JSON.
  ///
  /// If parsing fails, the black color is used
  factory Palette.fromJson(List<String> json) {
    var components = json.map((c) => Color(int.tryParse(c) ?? 0)).toList();
    return Palette(components: components);
  }
}
