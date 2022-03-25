import 'package:vk_library/src/api.dart';

class LeadForms {
  final API _api;

  LeadForms(this._api);

  Future<Map<String, dynamic>> create({
    required int groupId,
    required String name,
    required String title,
    required String description,
    required String questions,
    required String policyLinkUrl,
    String? photo,
    String? confirmation,
    String? siteLinkUrl,
    bool? active,
    bool? oncePerUser,
    String? pixelCode,
    dynamic notifyAdmins,
    dynamic notifyEmails,
  }) =>
      _api.request('leadForms.create', {
        'group_id': groupId,
        'name': name,
        'title': title,
        'description': description,
        'questions': questions,
        'policy_link_url': policyLinkUrl,
        if (photo != null) 'photo': photo,
        if (confirmation != null) 'confirmation': confirmation,
        if (siteLinkUrl != null) 'site_link_url': siteLinkUrl,
        if (active != null) 'active': active,
        if (oncePerUser != null) 'once_per_user': oncePerUser,
        if (pixelCode != null) 'pixel_code': pixelCode,
        if (notifyAdmins != null) 'notify_admins': notifyAdmins,
        if (notifyEmails != null) 'notify_emails': notifyEmails,
      });

  Future<Map<String, dynamic>> delete({
    required int groupId,
    required int formId,
  }) =>
      _api.request('leadForms.delete', {
        'group_id': groupId,
        'form_id': formId,
      });

  Future<Map<String, dynamic>> get({
    required int groupId,
    required int formId,
  }) =>
      _api.request('leadForms.get', {
        'group_id': groupId,
        'form_id': formId,
      });

  Future<Map<String, dynamic>> getLeads({
    required int groupId,
    required int formId,
    int? limit,
    String? nextPageToken,
  }) =>
      _api.request('leadForms.getLeads', {
        'group_id': groupId,
        'form_id': formId,
        if (limit != null) 'limit': limit,
        if (nextPageToken != null) 'next_page_token': nextPageToken,
      });

  Future<Map<String, dynamic>> getUploadURL() =>
      _api.request('leadForms.getUploadURL');

  Future<Map<String, dynamic>> list({
    required int groupId,
  }) =>
      _api.request('leadForms.list', {
        'group_id': groupId,
      });

  Future<Map<String, dynamic>> update({
    required int groupId,
    required int formId,
    required String name,
    required String title,
    required String description,
    required String questions,
    required String policyLinkUrl,
    String? photo,
    String? confirmation,
    String? siteLinkUrl,
    bool? active,
    bool? oncePerUser,
    String? pixelCode,
    dynamic notifyAdmins,
    dynamic notifyEmails,
  }) =>
      _api.request('leadForms.update', {
        'group_id': groupId,
        'form_id': formId,
        'name': name,
        'title': title,
        'description': description,
        'questions': questions,
        'policy_link_url': policyLinkUrl,
        if (photo != null) 'photo': photo,
        if (confirmation != null) 'confirmation': confirmation,
        if (siteLinkUrl != null) 'site_link_url': siteLinkUrl,
        if (active != null) 'active': active,
        if (oncePerUser != null) 'once_per_user': oncePerUser,
        if (pixelCode != null) 'pixel_code': pixelCode,
        if (notifyAdmins != null) 'notify_admins': notifyAdmins,
        if (notifyEmails != null) 'notify_emails': notifyEmails,
      });
}
