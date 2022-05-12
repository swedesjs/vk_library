import 'package:test/test.dart';
import 'package:vk_library/vk_library.dart';

void main() {
  group('Attachments', () {
    test('the main class must be equal to the desired string', () {
      final attachment = Attachment(
        type: AttachmentType.photo,
        id: 5678,
        ownerId: 1234,
      );

      expect(attachment.toString(), 'photo1234_5678');
    });

    test('the main class must be equal to the desired string with accessKey',
        () {
      final attachment = Attachment(
        type: AttachmentType.photo,
        id: 5678,
        ownerId: 1234,
        accessKey: 'ACCESS_KEY',
      );

      expect(attachment.toString(), 'photo1234_5678_ACCESS_KEY');
    });
  });
}
