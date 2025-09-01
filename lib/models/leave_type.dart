enum LeaveType {
  sick,                        // ลาป่วย
  workInjury,                  // ลาป่วยจากการทำงาน
  personal,                     // ลากิจธุระอันจำเป็น
  vacation,                     // ลาพักร้อน
  officialSeminar,              // ลาเพื่อไปประชุมสัมมนาตามหนังสือเชิญราชการ
  companySeminar,               // ลาเพื่อสัมมนากรณีงานบริษัท
  training,                     // ลาเพื่อฝึกอบรมพัฒนาความรู้
  funeral,                      // ลาเพื่อทำศพ
  naturalDisaster,              // ลากรณีประสบเหตุภัยธรรมชาติ
  militaryCallUp,               // ลาเพื่อเรียกระดมพลทหาร
  ordination,                   // ลาเพื่ออุปสมบท
  wedding,                       // ลาเพื่อจัดงานสมรส
  maternity,                     // ลาคลอดบุตร
  spouseMaternity,               // ลาภรรยาคลอดบุตร
  sterilization                  // ลาเพื่อทำหมัน
}

extension LeaveTypeExtension on LeaveType {
  String get name {
    switch (this) {
      case LeaveType.sick: return "ลาป่วย";
      case LeaveType.workInjury: return "ลาป่วยจากการทำงาน";
      case LeaveType.personal: return "ลากิจธุระอันจำเป็น";
      case LeaveType.vacation: return "วันลาพักร้อน";
      case LeaveType.officialSeminar: return "ลาเพื่อไปประชุมสัมมนาตามหนังสือเชิญราชการ";
      case LeaveType.companySeminar: return "ลาเพื่อสัมมนา/อบรมกรณีงานบริษัท";
      case LeaveType.training: return "ลาเพื่อการฝึกอบรมและพัฒนาความรู้";
      case LeaveType.funeral: return "ลาเพื่อทำศพ";
      case LeaveType.naturalDisaster: return "ลากรณีประสบเหตุอัคคีภัย อุทกภัย หรือภัยธรรมชาติอื่นๆ";
      case LeaveType.militaryCallUp: return "ลาเพื่อเรียกระดมพลทหาร";
      case LeaveType.ordination: return "ลาเพื่ออุปสมบท";
      case LeaveType.wedding: return "ลาเพื่อจัดงานสมรส";
      case LeaveType.maternity: return "ลาคลอดบุตร";
      case LeaveType.spouseMaternity: return "ลาภรรยาคลอดบุตร";
      case LeaveType.sterilization: return "ลาเพื่อทำหมัน";
    }
  }
}


