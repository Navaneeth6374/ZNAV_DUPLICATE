@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Department View'

define root view entity ZI_DEPARTMENT_NAV
  as select from znav_department
  composition [0..*] of ZI_STUDENT_NAV as _Student
{
  key dept_id   as DeptId,
      stud_dept as StudDept,

      _Student
}
