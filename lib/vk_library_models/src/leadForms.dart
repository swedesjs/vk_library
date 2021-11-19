part of "../vk_library_models.dart";

/// A class for using the [`leadForms`](https://vk.com/dev/leadForms) methods.
class LeadForms {
  final API _api;

  /// It is not recommended to create a constructor, the instance already exists in the [API] class
  const LeadForms(this._api);

  /// Creates a form for collecting applications.
  Future<Json> create({
    required int groupId,
    required String name,
    required String title,
    required String description,
    // TODO: Implement the class. - https://vk.com/dev/leadForms.create
    required List<Json> questions,
    required String policyLinkUrl,
    String? photo,
    String? confirmation,
    String? siteLinkUrl,
    bool? active,
    bool? oncePerUser,
    String? pixelCode,
    List<int>? notifyAdmins,
    List<String>? notifyEmails,
  }) async {
    final data = await _api.call("leadForms.create", {
      "group_id": groupId,
      "name": name,
      "title": title,
      "description": description,
      "questions": questions,
      "policy_link_url": policyLinkUrl,
      if (photo != null) "photo": photo,
      if (confirmation != null) "confirmation": confirmation,
      if (siteLinkUrl != null) "site_link_url": siteLinkUrl,
      if (active != null) "active": active,
      if (oncePerUser != null) "once_per_user": oncePerUser,
      if (pixelCode != null) "pixel_code": pixelCode,
      if (notifyAdmins != null) "notify_admins": notifyAdmins.join(","),
      if (notifyEmails != null) "notify_emails": notifyEmails.join(","),
    });

    return data.response;
  }

  /// Removes the application collection form.
  Future<int> delete({required int groupId, required int formId}) async {
    final data = await _api.call("leadForms.delete", {
      "group_id": groupId,
      "form_id": formId,
    });

    return data.response;
  }

  /// Returns information about the application collection form.
  Future<Json> get({required int groupId, required int formId}) async {
    final data = await _api.call("leadForms.get", {
      "group_id": groupId,
      "form_id": formId,
    });

    return data.response;
  }

  /// Returns the claims of the form.
  Future<List<Json>> getLeads({
    required int groupId,
    required int formId,
    int? limit,
    String? nextPageToken,
  }) async {
    final data = await _api.call("leadForms.getLeads", {
      "group_id": groupId,
      "form_id": formId,
      if (limit != null) "limit": limit,
      if (nextPageToken != null) "next_page_token": nextPageToken,
    });

    return data.response;
  }

  /// Returns the URL to download the cover for the form.
  Future<String> getUploadURL() async {
    final data = await _api.call("leadForms.getUploadURL", const {});

    return data.response;
  }

  /// Returns a list of community forms.
  Future<List<Json>> list({required int groupId}) async {
    final data = await _api.call("leadForms.list", {"group_id": groupId});

    return data.response;
  }

  /// Updates the application collection form.
  ///
  /// When the form is refreshed, all specified parameters overwrite their previous values.
  Future<Json> update({
    required int groupId,
    required int formId,
    required String name,
    required String title,
    required String description,
    // TODO: Implement the class. - https://vk.com/dev/leadForms.create
    required List<Json> questions,
    required String policyLinkUrl,
    String? photo,
    String? confirmation,
    String? siteLinkUrl,
    bool? active,
    bool? oncePerUser,
    String? pixelCode,
    List<int>? notifyAdmins,
    List<String>? notifyEmails,
  }) async {
    final data = await _api.call("leadForms.update", {
      "group_id": groupId,
      "form_id": formId,
      "name": name,
      "title": title,
      "description": description,
      "questions": questions,
      "policy_link_url": policyLinkUrl,
      if (photo != null) "photo": photo,
      if (confirmation != null) "confirmation": confirmation,
      if (siteLinkUrl != null) "site_link_url": siteLinkUrl,
      if (active != null) "active": active,
      if (oncePerUser != null) "once_per_user": oncePerUser,
      if (pixelCode != null) "pixel_code": pixelCode,
      if (notifyAdmins != null) "notify_admins": notifyAdmins.join(","),
      if (notifyEmails != null) "notify_emails": notifyEmails.join(","),
    });

    return data.response;
  }
}
