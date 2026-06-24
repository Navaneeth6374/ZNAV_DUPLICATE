@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Department Projection'

@UI.headerInfo: {
  typeName: 'Department',
  typeNamePlural: 'Departments',
  title: { value: 'StudDept' }
}

define root view entity ZC_DEPARTMENT_NAV
  as projection on ZI_DEPARTMENT_NAV
{

  @UI.hidden: true
  key DeptId,

  @UI.lineItem: [{ position: 10 }]
  @UI.identification: [{ position: 10 }]
  StudDept,

  @UI.facet: [{
      id: 'DepartmentInfo',
      type: #IDENTIFICATION_REFERENCE,
      label: 'Department Details',
      position: 10
  }]

  _Student : redirected to composition child ZC_STUDENT_NAV
}
