insert into AUTHORITY values(1, '일반회원');
insert into AUTHORITY values(2, '사업자');

insert into B_STATE values(1, '결제대기');
insert into B_STATE values(2, '결제완료');
insert into B_STATE values(3, '취소대기');
insert into B_STATE values(4, '취소완료');
insert into B_STATE values(5, '이용완료');

insert into I_STATE values(1, '문의대기');
insert into I_STATE values(2, '문의완료');
--silver, gold, diamond
insert into MEMBER values('linkdog@gmail.com', 1, '이름1', '닉네임1', 'qwer1234@', '1995/02/13', 0, 'SILVER');
insert into OWNER values('linkdog@gmail.com', null, '이름1', '123-45-67890', '회사명1', '회사주소1', '02-1234-1234');
insert into CAMP values(CAMP_SEQ.nextval, 'linkdog애견캠핑장', 37.6605421, 127.489966, '경기도 가평군 설악면 신천중앙로28번길 101-60', '000-0000-0000', 15, 60, 15, '전기시설,상하수도시설,샤워실,화장실', '소화기,대피소', '화장실,샤워실,개수대', '031-580-2066','가평군청 관광과',0);
insert into SORT values(SORT_SEQ.nextval, 1, '글램핑', '감자존-1', 4, 180000, '감자존1_1234.jpg', '감자존1.jpg');
insert into SORT values(SORT_SEQ.nextval, 1, '글램핑', '감자존-2', 4, 180000, '감자존2_1312.jpg', '감자존2.jpg');
insert into SORT values(SORT_SEQ.nextval, 1, '카라반', '시루존-1', 6, 220000, '시루존1_1581.jpg', '시루존1.jpg');
insert into IMG values(IMG_SEQ.nextval, 1, 'linkdog-thumb_1234224.jpg', 'linkdog-thumb.jpg', 169911, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 1, 'linkdog1_12431234.jpg', 'linkdog1.jpg', 169911, 'detail');
insert into IMG values(IMG_SEQ.nextval, 1, 'linkdog2_1124224s.jpg', 'linkdog2.jpg', 169911, 'detail');
insert into IMG values(IMG_SEQ.nextval, 1, 'linkdog3_15744324.jpg', 'linkdog3.jpg', 169911, 'detail');
update OWNER set CAMP_IDX = 1 where EMAIL = 'linkdog@gmail.com';
commit; 