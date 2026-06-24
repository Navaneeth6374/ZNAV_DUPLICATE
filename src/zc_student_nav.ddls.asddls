@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student Projection View'

@UI.headerInfo: {
  typeName: 'Student',
  typeNamePlural: 'Students',
  title: { value: 'StudentName' }
}

define view entity ZC_STUDENT_NAV
  as projection on ZI_STUDENT_NAV
{
  @UI.hidden: true
  key StudId,

  @UI.hidden: true
  DeptId,

  @UI.lineItem: [{ position: 10 }]
  @UI.identification: [{ position: 10 }]
  @UI.facet: [{
      id: 'StudentInfo',
      type: #IDENTIFICATION_REFERENCE,
      label: 'Student Details',
      position: 10
  }]
  StudentName,
    @UI.lineItem: [{ position: 20 }]
  @UI.identification: [{ position: 20 }]
  StudDept,
  

  @UI.lineItem: [{ position: 50 }]
  @UI.identification: [{ position: 50 }]
  StudMark,

  @UI.lineItem: [{ position: 60 }]
  @UI.identification: [{ position: 60 }]
  StudStatus,

  _Department :  redirected to parent ZC_DEPARTMENT_NAV
}
