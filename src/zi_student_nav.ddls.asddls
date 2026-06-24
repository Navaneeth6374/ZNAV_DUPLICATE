@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student View'

define view entity ZI_STUDENT_NAV
  as select from znav_student

  association to parent ZI_DEPARTMENT_NAV as _Department
    on $projection.DeptId = _Department.DeptId
{
  key stud_id      as StudId,

      dept_id      as DeptId,

      student_name as StudentName,

      stud_dept    as StudDept,

      stud_mark    as StudMark,

      stud_status  as StudStatus,

      _Department
}
