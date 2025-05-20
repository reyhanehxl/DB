
#پروژه سیستم سفارش غذای دانشگاه
### شناسایی Entities
_Person  
- Student  
- Teacher  
- Dish  
- Daily_menu  
- Order_table


personID int auto_increment primary key  تولید خودکار یک کلید یکتا برای هر شخص

name nvarchar(127) not null  تضمین می‌کند که هیچ رکوردی بدون نام وارد نشود

nationalID nvarchar(10) not null unique   اطمینان از وارد کردن،ذخیره‌ی کدملی به‌صورت رشته‌ی یونیکد 


oreign key (personID) references Person(personID)  تضمین وجود فرد متناظر در جدول Person برای هر دانشجو


UNIQUE(dishID, menuDate)  لوگیری از فهرست شدن یک غذا بیش از یک‌بار در یک روز، ولی مجاز بودن تکرار آن در روزهای مختلف

menuDate DATE NOT NULL  ثبت تاریخ ارائه منو

و بقیه مشابها.

