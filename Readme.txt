Usage Statics

งานที่เหลือ  :    จัดความเรียบร้อยของ UI , เชื่อม Database

โปรเจคใน flutter จะชื่อ usage นะ (กูควายเอง)  แต่ใน lib จะสร้าง floder แยกไว้ให้แล้วในแต่ละ feature นะงับ 

โดยใน floder usage จะเเบ่งเป็น date,month,year ซึ่งเบสโค้ดจะคล้ายๆกันแค่แบ่งตาม feature sort เวลางับ

ในไฟล์ date.dart

side bar จะอยุ่ใน class พวกนี้นะงับ และก็ใน class พวกนี้จะเป็นรายละเอียดต่างๆของหน้านั้นๆด้วย
usage_date_homepage() --> หน้าที่ 1
usage1_date_homepage() --> หน้าที่ 2
usage2_date_homepage() --> หน้าที่ 3

อันนี้เป็นตัวแปรทำไมเผื่อดึงค่าดาต้าเบสงับ
double total_charge = 50;
double total_electric = 250;

ตาราง จะอยุ่ในclass พวกนี้นะงับ
data_table_option() --> หน้าที่ 1
data_table_option1() --> หน้าที่ 2
data_table_option2() --> หน้าที่ 3
 // alert dialog จถอยู่ในนี้นะๆ data_table_option2()
widget ปุ่ม date month year งับ จะอยุ่ในclass พวกนี้นะงับ
# select = 0 จะเป็น date นะๆ
date() --> หน้าที่ 1
date1() --> หน้าที่ 2
date2() --> หน้าที่ 3