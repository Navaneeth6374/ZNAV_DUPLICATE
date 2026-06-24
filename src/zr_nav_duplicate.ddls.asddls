@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZNAV_DUPLICATE'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_NAV_DUPLICATE
  as select from ZNAV_DUPLICATE
{
  key stud_id as StudID,
  student_name as StudentName,
  stud_dept as StudDept,
  stud_mark as StudMark,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
