drop sequence BOOKING_SEQ;
drop sequence CAMP_SEQ;
drop sequence INQUIRY_SEQ;
drop sequence SORT_SEQ;
drop sequence REVIEW_SEQ;
drop sequence IMG_SEQ;
drop sequence HEART_SEQ;

purge recyclebin;

create sequence BOOKING_SEQ increment by 1 minvalue 0 start with 0 nocache;
create sequence CAMP_SEQ increment by 1 minvalue 0 start with 0 nocache;
create sequence INQUIRY_SEQ increment by 1 minvalue 0 start with 0 nocache;
create sequence SORT_SEQ increment by 1 minvalue 0 start with 0 nocache;
create sequence REVIEW_SEQ increment by 1 minvalue 0 start with 0 nocache;
create sequence IMG_SEQ increment by 1 minvalue 0 start with 0 nocache;
create sequence HEART_SEQ increment by 1 minvalue 0 start with 0 nocache;

