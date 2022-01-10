class PensilImageIcon {
  static const String pdf = 'lib/assets/icon/pdf.png';
  static const String image = 'lib/assets/icon/image.png';
  static const String doc = 'lib/assets/icon/doc.png';
  static const String epub = 'lib/assets/icon/epub.png';
  static const String audio = 'lib/assets/icon/audio.png';
  static const String link = 'lib/assets/icon/link.png';

  static getfiletypeIcon(String? type, {String? path}) {
    if (type == null && path != null) {
      type = path.split(".").last;
    }
    switch (type) {
      case "pdf":
        return pdf;
      case "png":
      case "jpg":
      case "jpeg":
        return image;
      case "epub":
        return epub;
      case "mp3":
        return audio;
      case "mp4":
      case "flv":
        return audio;
      case "docx":
      case "xls":
        return doc;
      case "link":
        return link;
      case "doc":
        return doc;
      default:
        return doc;
    }
  }
}
