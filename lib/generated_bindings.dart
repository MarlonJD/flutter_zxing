// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

/// Bindings to `native_verokit.h`.
class GeneratedBindings {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  GeneratedBindings(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  GeneratedBindings.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  /// @brief Enables or disables the logging of the library.
  /// @param enable Whether to enable or disable the logging.
  ///
  /// @param enabled
  void setLogEnabled(
    int enable,
  ) {
    return _setLogEnabled(
      enable,
    );
  }

  late final _setLogEnabledPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int)>>('setLogEnabled');
  late final _setLogEnabled =
      _setLogEnabledPtr.asFunction<void Function(int)>();

  /// Returns the version of the zxing-cpp library.
  ///
  /// @return The version of the zxing-cpp library.
  ffi.Pointer<ffi.Char> version() {
    return _version();
  }

  late final _versionPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function()>>('version');
  late final _version =
      _versionPtr.asFunction<ffi.Pointer<ffi.Char> Function()>();

  /// @brief Read barcode from image bytes.
  /// @param bytes Image bytes.
  /// @param format Specify a set of BarcodeFormats that should be searched for.
  /// @param width Image width in pixels.
  /// @param height Image height in pixels.
  /// @param cropWidth Crop width.
  /// @param cropHeight Crop height.
  /// @param tryHarder Spend more time to try to find a barcode; optimize for accuracy, not speed.
  /// @param tryRotate Also try detecting code in 90, 180 and 270 degree rotated images.
  /// @return The barcode result.
  CodeResult readBarcode(
    ffi.Pointer<ffi.Char> bytes,
    int format,
    int width,
    int height,
    int cropWidth,
    int cropHeight,
    int tryHarder,
    int tryRotate,
  ) {
    return _readBarcode(
      bytes,
      format,
      width,
      height,
      cropWidth,
      cropHeight,
      tryHarder,
      tryRotate,
    );
  }

  late final _readBarcodePtr = _lookup<
      ffi.NativeFunction<
          CodeResult Function(ffi.Pointer<ffi.Char>, ffi.Int, ffi.Int, ffi.Int,
              ffi.Int, ffi.Int, ffi.Int, ffi.Int)>>('readBarcode');
  late final _readBarcode = _readBarcodePtr.asFunction<
      CodeResult Function(
          ffi.Pointer<ffi.Char>, int, int, int, int, int, int, int)>();

  /// @brief Read barcodes from image bytes.
  /// @param bytes Image bytes.
  /// @param format Specify a set of BarcodeFormats that should be searched for.
  /// @param width Image width in pixels.
  /// @param height Image height in pixels.
  /// @param cropWidth Crop width.
  /// @param cropHeight Crop height.
  /// @param tryHarder Spend more time to try to find a barcode, optimize for accuracy, not speed.
  /// @param tryRotate Also try detecting code in 90, 180 and 270 degree rotated images.
  /// @return The barcode results.
  CodeResults readBarcodes(
    ffi.Pointer<ffi.Char> bytes,
    int format,
    int width,
    int height,
    int cropWidth,
    int cropHeight,
    int tryHarder,
    int tryRotate,
  ) {
    return _readBarcodes(
      bytes,
      format,
      width,
      height,
      cropWidth,
      cropHeight,
      tryHarder,
      tryRotate,
    );
  }

  late final _readBarcodesPtr = _lookup<
      ffi.NativeFunction<
          CodeResults Function(ffi.Pointer<ffi.Char>, ffi.Int, ffi.Int, ffi.Int,
              ffi.Int, ffi.Int, ffi.Int, ffi.Int)>>('readBarcodes');
  late final _readBarcodes = _readBarcodesPtr.asFunction<
      CodeResults Function(
          ffi.Pointer<ffi.Char>, int, int, int, int, int, int, int)>();

  /// @brief Encode a string into a barcode
  /// @param contents The string to encode
  /// @param width The width of the barcode in pixels.
  /// @param height The height of the barcode in pixels.
  /// @param format The format of the barcode
  /// @param margin The margin of the barcode
  /// @param eccLevel The error correction level of the barcode. Used for Aztec, PDF417, and QRCode only, [0-8].
  /// @return The barcode data
  EncodeResult encodeBarcode(
    ffi.Pointer<ffi.Char> contents,
    int width,
    int height,
    int format,
    int margin,
    int eccLevel,
  ) {
    return _encodeBarcode(
      contents,
      width,
      height,
      format,
      margin,
      eccLevel,
    );
  }

  late final _encodeBarcodePtr = _lookup<
      ffi.NativeFunction<
          EncodeResult Function(ffi.Pointer<ffi.Char>, ffi.Int, ffi.Int,
              ffi.Int, ffi.Int, ffi.Int)>>('encodeBarcode');
  late final _encodeBarcode = _encodeBarcodePtr.asFunction<
      EncodeResult Function(ffi.Pointer<ffi.Char>, int, int, int, int, int)>();
}

/// @brief Format Enumerates barcode formats known to this package.
abstract class Format {
  /// < Used as a return value if no valid barcode has been detected
  static const int None = 0;

  /// < Aztec (2D)
  static const int Aztec = 1;

  /// < Codabar (1D)
  static const int Codabar = 2;

  /// < Code39 (1D)
  static const int Code39 = 4;

  /// < Code93 (1D)
  static const int Code93 = 8;

  /// < Code128 (1D)
  static const int Code128 = 16;

  /// < GS1 DataBar, formerly known as RSS 14
  static const int DataBar = 32;

  /// < GS1 DataBar Expanded, formerly known as RSS EXPANDED
  static const int DataBarExpanded = 64;

  /// < DataMatrix (2D)
  static const int DataMatrix = 128;

  /// < EAN-8 (1D)
  static const int EAN8 = 256;

  /// < EAN-13 (1D)
  static const int EAN13 = 512;

  /// < ITF (Interleaved Two of Five) (1D)
  static const int ITF = 1024;

  /// < MaxiCode (2D)
  static const int MaxiCode = 2048;

  /// < PDF417 (1D) or (2D)
  static const int PDF417 = 4096;

  /// < QR Code (2D)
  static const int QRCode = 8192;

  /// < UPC-A (1D)
  static const int UPCA = 16384;

  /// < UPC-E (1D)
  static const int UPCE = 32768;
  static const int OneDCodes = 51070;
  static const int TwoDCodes = 14465;
  static const int Any = 65535;
}

/// @brief Pos is a position of a barcode in a image.
class Pos extends ffi.Struct {
  /// < x coordinate of top left corner of barcode
  @ffi.Int()
  external int topLeftX;

  /// < y coordinate of top left corner of barcode
  @ffi.Int()
  external int topLeftY;

  /// < x coordinate of top right corner of barcode
  @ffi.Int()
  external int topRightX;

  /// < y coordinate of top right corner of barcode
  @ffi.Int()
  external int topRightY;

  /// < x coordinate of bottom left corner of barcode
  @ffi.Int()
  external int bottomLeftX;

  /// < y coordinate of bottom left corner of barcode
  @ffi.Int()
  external int bottomLeftY;

  /// < x coordinate of bottom right corner of barcode
  @ffi.Int()
  external int bottomRightX;

  /// < y coordinate of bottom right corner of barcode
  @ffi.Int()
  external int bottomRightY;
}

/// @brief The CodeResult class encapsulates the result of decoding a barcode within an image.
class CodeResult extends ffi.Struct {
  /// < Whether the barcode was successfully decoded
  @ffi.Int()
  external int isValid;

  /// < The decoded text
  external ffi.Pointer<ffi.Char> text;

  /// < The bytes is the raw / standard content without any modifications like character set conversions
  external ffi.Pointer<ffi.UnsignedChar> bytes;

  /// < The length of the bytes
  @ffi.Int()
  external int length;

  /// < The format of the barcode
  @ffi.Int32()
  external int format;

  /// < The position of the barcode within the image
  external ffi.Pointer<Pos> pos;
}

/// @brief The CodeResults class encapsulates the result of decoding multiple barcodes within an image.
class CodeResults extends ffi.Struct {
  /// < The number of barcodes detected
  @ffi.Int()
  external int count;

  /// < The results of the barcode decoding
  external ffi.Pointer<CodeResult> results;
}

/// @brief EncodeResult encapsulates the result of encoding a barcode.
class EncodeResult extends ffi.Struct {
  /// < Whether the barcode was successfully encoded
  @ffi.Int()
  external int isValid;

  /// < The encoded text
  external ffi.Pointer<ffi.Char> text;

  /// < The format of the barcode
  @ffi.Int32()
  external int format;

  /// < The encoded data
  external ffi.Pointer<ffi.SignedChar> data;

  /// < The length of the encoded data
  @ffi.Int()
  external int length;

  /// < The error message
  external ffi.Pointer<ffi.Char> error;
}
