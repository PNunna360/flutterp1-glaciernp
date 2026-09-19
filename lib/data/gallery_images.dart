/// All currently available photos in assets/images/.
///
/// The .jpg files decode reliably on every platform. The .HEIC/.heic files
/// are only safe to reference behind an errorBuilder fallback, since Flutter's
/// Image.asset cannot reliably decode HEIC on most platforms.
const List<String> galleryImages = [
  'assets/images/IMG_7093.jpg',
  'assets/images/20260707_141704.jpg',
  'assets/images/Screenshot 2026-09-16 143125.jpg',
  'assets/images/IMG_6945.HEIC',
  'assets/images/IMG_7024.HEIC',
  'assets/images/IMG_7068.heic',
  'assets/images/IMG_7078.HEIC',
];
