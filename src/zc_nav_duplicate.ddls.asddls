@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZNAV_DUPLICATE'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_NAV_DUPLICATE
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_NAV_DUPLICATE
  association [1..1] to ZR_NAV_DUPLICATE as _BaseEntity on $projection.STUDID = _BaseEntity.STUDID
{
  key StudID,
  StudentName,
  StudDept,
  StudMark,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
