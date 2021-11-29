part of vk_library_enums;

/// The order in which to return the list of topics.
enum OrderBoardGetTopics {
  /// Descending update date.
  DESCENDING_UPDATE_DATE,

  /// Descending date of creation.
  DESCENDING_DATE_OF_CREATION,

  /// Ascending update date.
  ASCENDING_UPDATE_DATE,

  /// Ascending creation date.
  ASCENDING_CREATION_DATE
}

const MapOrderBoardGetTopics = {
  OrderBoardGetTopics.DESCENDING_UPDATE_DATE: 1,
  OrderBoardGetTopics.DESCENDING_DATE_OF_CREATION: 2,
  OrderBoardGetTopics.ASCENDING_UPDATE_DATE: -1,
  OrderBoardGetTopics.ASCENDING_CREATION_DATE: -2,
};
