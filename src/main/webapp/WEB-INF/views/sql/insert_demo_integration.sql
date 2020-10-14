--관리자
insert into ADMIN values('admin@gmail.com', 'qwer1234@');

insert into AUTHORITY values(1, '일반회원');
insert into AUTHORITY values(2, '사업자');

insert into B_STATE values(1, '결제완료');
insert into B_STATE values(2, '취소완료');

insert into I_STATE values(1, '문의대기');
insert into I_STATE values(2, '문의완료');

--특수 기호(&,*,#, ...)를 insert 하기 위한 구문
set define off

--<회원>
--1
insert into MEMBER values('email301@gmail.com', 2, '이름301', '닉네임301', 'qwer1234@', 0, 'true', 00000301, 'SILVER');
insert into OWNER values('email301@gmail.com', null, '이름301', '123-45-67890', '회사명301', '회사주소301', '02-1234-1234');
--2
insert into MEMBER values('email302@gmail.com', 2, '이름302', '닉네임302', 'qwer1234@', 0, 'true', 00000302, 'SILVER');
insert into OWNER values('email302@gmail.com', null, '이름302', '123-45-67890', '회사명302', '회사주소302', '02-1234-1234');
--3
insert into MEMBER values('email303@gmail.com', 2, '이름303', '닉네임303', 'qwer1234@', 0, 'true', 00000303, 'SILVER');
insert into OWNER values('email303@gmail.com', null, '이름303', '123-45-67890', '회사명303', '회사주소303', '02-1234-1234');
--4
insert into MEMBER values('email304@gmail.com', 2, '이름304', '닉네임304', 'qwer1234@', 0, 'true', 00000304, 'SILVER');
insert into OWNER values('email304@gmail.com', null, '이름304', '123-45-67890', '회사명304', '회사주소304', '02-1234-1234');
--5
insert into MEMBER values('email305@gmail.com', 2, '이름305', '닉네임305', 'qwer1234@', 0, 'true', 00000305, 'SILVER');
insert into OWNER values('email305@gmail.com', null, '이름305', '123-45-67890', '회사명305', '회사주소305', '02-1234-1234');
--6
insert into MEMBER values('email306@gmail.com', 2, '이름306', '닉네임306', 'qwer1234@', 0, 'true', 00000306, 'SILVER');
insert into OWNER values('email306@gmail.com', null, '이름306', '123-45-67890', '회사명306', '회사주소306', '02-1234-1234');
--7
insert into MEMBER values('email307@gmail.com', 2, '이름307', '닉네임307', 'qwer1234@', 0, 'true', 00000307, 'SILVER');
insert into OWNER values('email307@gmail.com', null, '이름307', '123-45-67890', '회사명307', '회사주소307', '02-1234-1234');
--8
insert into MEMBER values('email308@gmail.com', 2, '이름308', '닉네임308', 'qwer1234@', 0, 'true', 00000308, 'SILVER');
insert into OWNER values('email308@gmail.com', null, '이름308', '123-45-67890', '회사명308', '회사주소308', '02-1234-1234');
--9
insert into MEMBER values('email309@gmail.com', 2, '이름309', '닉네임309', 'qwer1234@', 0, 'true', 00000309, 'SILVER');
insert into OWNER values('email309@gmail.com', null, '이름309', '123-45-67890', '회사명309', '회사주소309', '02-1234-1234');
--10
insert into MEMBER values('email310@gmail.com', 2, '이름310', '닉네임310', 'qwer1234@', 0, 'true', 00000310, 'SILVER');
insert into OWNER values('email310@gmail.com', null, '이름310', '123-45-67890', '회사명310', '회사주소310', '02-1234-1234');
--11
insert into MEMBER values('linkdog@gmail.com', 2, '이름1', '닉네임1', 'qwer1234@', 0, 'true', 12341234, 'SILVER');
insert into OWNER values('linkdog@gmail.com', null, '이름1', '123-45-67890', '회사명1', '회사주소1', '02-1234-1234');

--<캠핑장>
--1
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '청포대숲속야영장', --캠핑장명
    '충청남도 태안군 남면 청포대길 32-8', --주소
    '041-000-0000', --캠핑장전화번호
    9, --캠핑장 사이트 수
    36, --1일최대수용인원
    0, --주차장수
    '전기시설,하수도시설', --편의시설
    '소화기,대피공간', --안전시설
    null, --기타부대시설
    '041-670-2766', --관리기관전화번호
    '태안군청', --관리기관명
    0, --예약횟수
    null,
    10000
);
insert into SORT values(SORT_SEQ.nextval, 1, '오토캠핑', '데크', 6, 25000, '청포대숲속야영장-데크사이트_353935.jpg', '청포대숲속야영장-데크사이트.jpg');
insert into IMG values(IMG_SEQ.nextval, 1, '청포대숲속야영장-thumb_1242423.jpg', '청포대숲속야영장-thumb.jpg', 119359, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 1, '청포대숲속야영장-1_243521.jpg', '청포대숲속야영장-1.jpg', 169572, 'detail');
insert into IMG values(IMG_SEQ.nextval, 1, '청포대숲속야영장-2_24352145551.jpg', '청포대숲속야영장-2.jpg', 35100, 'detail');
insert into IMG values(IMG_SEQ.nextval, 1, '청포대숲속야영장-3_2425211.jpg', '청포대숲속야영장-3.jpg', 138206, 'detail');
insert into IMG values(IMG_SEQ.nextval, 1, '청포대숲속야영장-4_4253235.jpg', '청포대숲속야영장-4.jpg', 201597, 'detail');
update OWNER set CAMP_IDX = 1 where EMAIL = 'email301@gmail.com';

--2
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '청포대휴야영장', --캠핑장명
    '충청남도 태안군 남면 청포대길 63-6', --주소
    '041-000-0000', --캠핑장전화번호
    10, --캠핑장 사이트 수
    40, --1일최대수용인원
    0, --주차장수
    '전기시설,하수도시설', --편의시설
    '소화기,대피공간', --안전시설
    null, --기타부대시설
    '041-670-2766', --관리기관전화번호
    '태안군청', --관리기관명
    0, --예약횟수
    null,
    10000
);
insert into SORT values(SORT_SEQ.nextval, 2, '오토캠핑', '데크', 6, 40000, '청포대휴캠핑장-데크사이트_32583744.jpg', '청포대휴캠핑장-데크사이트.jpg');
insert into IMG values(IMG_SEQ.nextval, 2, '청포대휴캠핑장-thumb_23939583.png', '청포대휴캠핑장-thumb.png', 708730, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 2, '청포대휴캠핑장-1_2343583.jpg', '청포대숲속야영장-1.jpg', 445319, 'detail');
insert into IMG values(IMG_SEQ.nextval, 2, '청포대휴캠핑장-2_234536.jpg', '청포대숲속야영장-2.jpg', 112477, 'detail');
insert into IMG values(IMG_SEQ.nextval, 2, '청포대휴캠핑장-3_353532.png', '청포대숲속야영장-3.jpg', 873733, 'detail');
insert into IMG values(IMG_SEQ.nextval, 2, '청포대휴캠핑장-4_596937.jpg', '청포대숲속야영장-4.jpg', 107108, 'detail');
update OWNER set CAMP_IDX = 2 where EMAIL = 'email302@gmail.com';

--3
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '몽산포오션캠핑장', --캠핑장명
    '충청남도 태안군 남면 신장리 433-4', --주소
    '041-000-0000', --캠핑장전화번호
    18, --캠핑장 사이트 수
    80, --1일최대수용인원
    0, --주차장수
    '전기시설,하수도시설', --편의시설
    '소화기,대피공간', --안전시설
    null, --기타부대시설
    '041-670-2766', --관리기관전화번호
    '태안군청', --관리기관명
    0, --예약횟수
    null,
    0
);
insert into SORT values(SORT_SEQ.nextval, 3, '오토캠핑', 'A구역', 4, 30000, '몽산포오션캠핑장-A구역_2242232.jpg', '몽산포오션캠핑장-A구역.jpg');
insert into SORT values(SORT_SEQ.nextval, 3, '오토캠핑', 'B구역', 4, 30000, '몽산포오션캠핑장-B구역_246566348.png', '몽산포오션캠핑장-B구역.png');
insert into SORT values(SORT_SEQ.nextval, 3, '오토캠핑', 'C구역', 4, 30000, '몽산포오션캠핑장-C구역_553232.jpg', '몽산포오션캠핑장-C구역.jpg');
insert into SORT values(SORT_SEQ.nextval, 3, '오토캠핑', 'D구역', 4, 30000, '몽산포오션캠핑장-D구역_24905348.png', '몽산포오션캠핑장-D구역.png');
insert into IMG values(IMG_SEQ.nextval, 3, '몽산포오션캠핑장-thumb_25462332.jpg', '몽산포오션캠핑장-thumb.jpg', 72881, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 3, '몽산포오션캠핑장-1_9255542.jpg', '몽산포오션캠핑장-1.jpg', 56588, 'detail');
insert into IMG values(IMG_SEQ.nextval, 3, '몽산포오션캠핑장-2_536522.jpg', '몽산포오션캠핑장-2.jpg', 125453, 'detail');
insert into IMG values(IMG_SEQ.nextval, 3, '몽산포오션캠핑장-3_92211442.jpg', '몽산포오션캠핑장-3.jpg', 100937, 'detail');
update OWNER set CAMP_IDX = 3 where EMAIL = 'email303@gmail.com';

--4
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '솔향기캠핑장', --캠핑장명
    '충청남도 태안군 소원면 모항리 442-3', --주소
    '041-000-0000', --캠핑장전화번호
    31, --캠핑장 사이트 수
    124, --1일최대수용인원
    0, --주차장수
    '전기시설,하수도시설', --편의시설
    '소화기,대피공간', --안전시설
    null, --기타부대시설
    '041-670-2766', --관리기관전화번호
    '태안군청', --관리기관명
    0, --예약횟수
    null,
    10000
);
insert into SORT values(SORT_SEQ.nextval, 4, '오토캠핑', '대형데크 A존', 6, 40000, '솔향기캠핑장-A존_4788912.jpg', '솔향기캠핑장-A존.jpg');
insert into SORT values(SORT_SEQ.nextval, 4, '오토캠핑', '일반형데크 B존', 4, 32000, '솔향기캠핑장-B존_4242218912.jpg', '솔향기캠핑장-B존.jpg');
insert into SORT values(SORT_SEQ.nextval, 4, '오토캠핑', '자연형,노지 C존', 6, 25000, '솔향기캠핑장-C존_424221912.jpg', '솔향기캠핑장-C존.jpg');
insert into SORT values(SORT_SEQ.nextval, 4, '카라반', '카라반(정박형, 카라반 제공) D존', 4, 160000, '솔향기캠핑장-D존_4431112.jpg', '솔향기캠핑장-D존.jpg');
insert into SORT values(SORT_SEQ.nextval, 4, '오토캠핑', '자동차캠핑장 E존', 6, 50000, '솔향기캠핑장-E존_1331112.jpg', '솔향기캠핑장-E존.jpg');
insert into IMG values(IMG_SEQ.nextval, 4, '솔향기캠핑장-thumb_4242992.jpg', '솔향기캠핑장-thumb.jpg', 86927, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 4, '솔향기캠핑장-1_19942.jpg', '솔향기캠핑장-1.jpg', 124265, 'detail');
insert into IMG values(IMG_SEQ.nextval, 4, '솔향기캠핑장-2_319942.jpg', '솔향기캠핑장-2.jpg', 102800, 'detail');
insert into IMG values(IMG_SEQ.nextval, 4, '솔향기캠핑장-3_342112.jpg', '솔향기캠핑장-3.jpg', 58618, 'detail');
insert into IMG values(IMG_SEQ.nextval, 4, '솔향기캠핑장-4_342113.jpg', '솔향기캠핑장-4.jpg', 72712, 'detail');
insert into IMG values(IMG_SEQ.nextval, 4, '솔향기캠핑장-5_329942.jpg', '솔향기캠핑장-5.jpg', 125655, 'detail');
insert into IMG values(IMG_SEQ.nextval, 4, '솔향기캠핑장-6_4429942.jpg', '솔향기캠핑장-6.jpg', 125655, 'detail');
update OWNER set CAMP_IDX = 4 where EMAIL = 'email304@gmail.com';

--5
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '나로캠핑장', --캠핑장명
    '충청남도 태안군 원북면 방갈리 515-175', --주소
    '041-000-0000', --캠핑장전화번호
    20, --캠핑장 사이트 수
    80, --1일최대수용인원
    0, --주차장수
    '전기시설,하수도시설', --편의시설
    '소화기,대피공간', --안전시설
    null, --기타부대시설
    '041-670-2766', --관리기관전화번호
    '태안군청', --관리기관명
    0, --예약횟수
    null,
    10000
);
insert into SORT values(SORT_SEQ.nextval, 5, '오토캠핑', '파쇄석&데크 A존', 4, 45000, '나로캠핑장-A존_107960.jpg', '나로캠핑장-A존.jpg');
insert into SORT values(SORT_SEQ.nextval, 5, '오토캠핑', '파쇄석 B존', 4, 45000, '나로캠핑장-B존_407960.jpg', '나로캠핑장-B존.jpg');
insert into SORT values(SORT_SEQ.nextval, 5, '카라반', 'C존(카라반제공X)', 4, 45000, '나로캠핑장-C존_443220.jpg', '나로캠핑장-C존.jpg');
insert into SORT values(SORT_SEQ.nextval, 5, '카라반', 'D존(카라반제공X)', 4, 45000, '나로캠핑장-D존_41111123.jpg', '나로캠핑장-D존.jpg');
insert into SORT values(SORT_SEQ.nextval, 5, '오토캠핑', '데크 E존', 4, 60000, '나로캠핑장-E존_544560.jpg', '나로캠핑장-E존.jpg');
insert into SORT values(SORT_SEQ.nextval, 5, '글램핑', '글램핑 온돌방 F존', 6, 250000, '나로캠핑장-F존_56000.jpg', '나로캠핑장-F존.jpg');
insert into SORT values(SORT_SEQ.nextval, 5, '글램핑', '글램핑 침대방 F존', 6, 250000, '나로캠핑장-F존_554129.jpg', '나로캠핑장-F존.jpg');
insert into SORT values(SORT_SEQ.nextval, 5, '노지캠프', '해변 숲속야영장 G존', 4, 40000, '나로캠핑장-G존_987960.jpg', '나로캠핑장-G존.jpg');
insert into IMG values(IMG_SEQ.nextval, 5, '나로캠핑장-thumb_789929.jpg', '나로캠핑장-thumb.jpg', 287997, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 5, '나로캠핑장-1_617960.jpg', '나로캠핑장-1.jpg', 59323, 'detail');
insert into IMG values(IMG_SEQ.nextval, 5, '나로캠핑장-2_627960.jpg', '나로캠핑장-2.jpg', 37169, 'detail');
insert into IMG values(IMG_SEQ.nextval, 5, '나로캠핑장-3_637960.jpg', '나로캠핑장-3.jpg', 295205, 'detail');
update OWNER set CAMP_IDX = 5 where EMAIL = 'email305@gmail.com';

--6
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '굼벵이 캠핑농원', --캠핑장명
    '충청남도 태안군 이원면 내리 523', --주소
    '041-000-0000', --캠핑장전화번호
    25, --캠핑장 사이트 수
    100, --1일최대수용인원
    25, --주차장수
    '전기시설,하수도시설', --편의시설
    '소화기,대피공간', --안전시설
    null, --기타부대시설
    '041-670-2766', --관리기관전화번호
    '태안군청', --관리기관명
    0, --예약횟수
    null,
    10000
);
insert into SORT values(SORT_SEQ.nextval, 6, '오토캠핑', '파쇄석존', 4, 40000, '굼벵이캠핑농원-파쇄석존_5553352.jpg', '굼벵이캠핑농원-파쇄석존.jpg');
insert into IMG values(IMG_SEQ.nextval, 6, '굼벵이캠핑농원-thumb_54352.jpg', '굼벵이캠핑농원-thumb.jpg', 85740, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 6, '굼벵이캠핑농원-1_5153352.jpg', '굼벵이캠핑농원-1.jpg', 209118, 'detail');
insert into IMG values(IMG_SEQ.nextval, 6, '굼벵이캠핑농원-2_5253352.jpg', '굼벵이캠핑농원-2.jpg', 116695, 'detail');
insert into IMG values(IMG_SEQ.nextval, 6, '굼벵이캠핑농원-3_5353352.jpg', '굼벵이캠핑농원-3.jpg', 214003, 'detail');
update OWNER set CAMP_IDX = 6 where EMAIL = 'email306@gmail.com';

--7
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '산들래 야영장', --캠핑장명
    '경기도 화성시 비봉면 자청로207번길 21-71', --주소
    '031-356-4005', --캠핑장전화번호
    56, --캠핑장 사이트 수
    80, --1일최대수용인원
    40, --주차장수
    '전기시설,샤워실,화장실,조리대', --편의시설
    '소화기,대피공간,방송장비,CCTV', --안전시설
    null, --기타부대시설
    '031-5189-6049', --관리기관전화번호
    '화성시청', --관리기관명
    0, --예약횟수
    null,
    0
);
insert into SORT values(SORT_SEQ.nextval, 7, '오토캠핑', '잔디존', 4, 40000, '산들래야영장-잔디존_643325.jpg', '산들래야영장-잔디존.jpg');
insert into SORT values(SORT_SEQ.nextval, 7, '오토캠핑', '파쇄석존', 4, 50000, '산들래야영장-파쇄석존_65000.jpg', '산들래야영장-파쇄석존.jpg');
insert into SORT values(SORT_SEQ.nextval, 7, '오토캠핑', '몽골천막 파쇄석존', 4, 80000, '산들래야영장-몽골천막존_643321.jpg', '산들래야영장-몽골천막존.jpg');
insert into SORT values(SORT_SEQ.nextval, 7, '카라반', '카라반(카라반제공X)', 4, 50000, '산들래야영장-파쇄석존_643323.jpg', '산들래야영장-파쇄석존.jpg');
insert into IMG values(IMG_SEQ.nextval, 7, '산들래야영장-thumb_643322.jpg', '산들래야영장-thumb.jpg', 35506 , 'thumb');
insert into IMG values(IMG_SEQ.nextval, 7, '산들래야영장-1_643324.jpg', '산들래야영장-1.jpg', 30274, 'detail');
insert into IMG values(IMG_SEQ.nextval, 7, '산들래야영장-2_643326.jpg', '산들래야영장-2.jpg', 27434, 'detail');
insert into IMG values(IMG_SEQ.nextval, 7, '산들래야영장-3_643327.jpg', '산들래야영장-3.jpg', 39859, 'detail');
update OWNER set CAMP_IDX = 7 where EMAIL = 'email307@gmail.com';

--8
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '어섬캠핑장', --캠핑장명
    '경기도 화성시 송산면 어섬길259번길 64', --주소
    '031-356-4005', --캠핑장전화번호
    6, --캠핑장 사이트 수
    36, --1일최대수용인원
    4, --주차장수
    '전기시설,샤워실,화장실,가스시설', --편의시설
    '소화기,확성기,대피공간', --안전시설
    null, --기타부대시설
    '031-5189-6049', --관리기관전화번호
    '화성시청', --관리기관명
    0, --예약횟수
    null,
    10000
);
insert into SORT values(SORT_SEQ.nextval, 8, '오토캠핑', '데크 A구역', 4, 35000, '어섬캠핑장-A구역_350030.jpg', '어섬캠핑장-A구역.jpg');
insert into SORT values(SORT_SEQ.nextval, 8, '오토캠핑', '데크 B구역', 4, 35000, '어섬캠핑장-B구역_350031.jpg', '어섬캠핑장-B구역.jpg');
insert into IMG values(IMG_SEQ.nextval, 8, '어섬캠핑장-thumb_350034.jpg', '어섬캠핑장-thumb.jpg', 163843, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 8, '어섬캠핑장-1_350032.jpg', '어섬캠핑장-1.jpg', 83083, 'detail');
insert into IMG values(IMG_SEQ.nextval, 8, '어섬캠핑장-2_350033.jpg', '어섬캠핑장-2.jpg', 105716, 'detail');
insert into IMG values(IMG_SEQ.nextval, 8, '어섬캠핑장-3_350035.jpg', '어섬캠핑장-3.jpg', 92341, 'detail');
update OWNER set CAMP_IDX = 8 where EMAIL = 'email308@gmail.com';

--9
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '은빛초원캠핑장', --캠핑장명
    '경기도 화성시 남양읍 샘실길 50-2', --주소
    '031-356-4927', --캠핑장전화번호
    20, --캠핑장 사이트 수
    50, --1일최대수용인원
    20, --주차장수
    '전기시설,샤워실,화장실,휴대용가스렌지,매점', --편의시설
    '소화기,확성기,대피공간', --안전시설
    null, --기타부대시설
    '031-5189-6049', --관리기관전화번호
    '화성시청', --관리기관명
    0, --예약횟수
    null,
    10000
);
insert into SORT values(SORT_SEQ.nextval, 9, '오토캠핑', '파쇄석존', 4, 35000, '은빛초원캠핑장-파쇄석존_74421.jpg', '은빛초원캠핑장-파쇄석존.jpg');
insert into IMG values(IMG_SEQ.nextval, 9, '은빛초원캠핑장-thumb_74420.jpg', '은빛초원캠핑장-thumb.jpg', 99775, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 9, '은빛초원캠핑장-1_74422.jpg', '은빛초원캠핑장-1.jpg', 266367, 'detail');
insert into IMG values(IMG_SEQ.nextval, 9, '은빛초원캠핑장-2_74423.jpg', '은빛초원캠핑장-2.jpg', 272523, 'detail');
update OWNER set CAMP_IDX = 9 where EMAIL = 'email309@gmail.com';

--10
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '카라반캠프', --캠핑장명
    '경기도 화성시 서신면 해안길 72', --주소
    '031-357-8031', --캠핑장전화번호
    12, --캠핑장 사이트 수
    68, --1일최대수용인원
    3, --주차장수
    '전기시설,샤워실,화장실,애완동물금지', --편의시설
    '소화기,확성기,대피공간', --안전시설
    null, --기타부대시설
    '031-5189-6049', --관리기관전화번호
    '화성시청', --관리기관명
    0, --예약횟수
    null,
    10000
);
insert into SORT values(SORT_SEQ.nextval, 10, '카라반', '카라반(카라반 기본제공)', 6, 200000, '카라반캠프-카라반_543181.png', '카라반캠프-카라반.jpg');
insert into IMG values(IMG_SEQ.nextval, 10, '카라반캠프-thumb_543180.png', '카라반캠프-thumb.png', 902587, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 10, '카라반캠프-1_543182.png', '카라반캠프-1.png', 967954, 'detail');
insert into IMG values(IMG_SEQ.nextval, 10, '카라반캠프-2_543183.png', '카라반캠프-2.png', 841825, 'detail');
insert into IMG values(IMG_SEQ.nextval, 10, '카라반캠프-3_543184.png', '카라반캠프-3.png', 798600, 'detail');
insert into IMG values(IMG_SEQ.nextval, 10, '카라반캠프-4_543185.png', '카라반캠프-4.png', 896526, 'detail');
insert into IMG values(IMG_SEQ.nextval, 10, '카라반캠프-5_543186.png', '카라반캠프-5.png', 980337, 'detail');
update OWNER set CAMP_IDX = 10 where EMAIL = 'email310@gmail.com';

--11
insert into CAMP values(CAMP_SEQ.nextval, 'linkdog애견캠핑장', '경기도 가평군 설악면 신천중앙로28번길 101-60', '000-0000-0000', 15, 60, 15, '전기시설,상하수도시설,샤워실,화장실', '소화기,대피소', '화장실,샤워실,개수대', '031-580-2066','가평군청 관광과',0, null, 10000);
insert into SORT values(SORT_SEQ.nextval, 11, '글램핑', '감자존-1', 4, 180000, '감자존1_101.jpg', '감자존1.jpg');
insert into SORT values(SORT_SEQ.nextval, 11, '글램핑', '감자존-2', 4, 180000, '감자존2_101.jpg', '감자존2.jpg');
insert into SORT values(SORT_SEQ.nextval, 11, '카라반', '시루존-1', 6, 220000, '시루존1_101.jpg', '시루존1.jpg');
insert into IMG values(IMG_SEQ.nextval, 11, 'linkdog-thumb_101.jpg', 'linkdog-thumb.jpg', 169911, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 11, 'linkdog1_101.jpg', 'linkdog1.jpg', 169911, 'detail');
insert into IMG values(IMG_SEQ.nextval, 11, 'linkdog2_101.jpg', 'linkdog2.jpg', 169911, 'detail');
insert into IMG values(IMG_SEQ.nextval, 11, 'linkdog3_101.jpg', 'linkdog3.jpg', 169911, 'detail');
update OWNER set CAMP_IDX = 11 where EMAIL = 'linkdog@gmail.com';

set define on;

-------------once-------------
--MEMBER
insert into MEMBER values('vkfks101@naver.com', 2, '이름101', '닉네임101', 'qlqjs101@', 0, 'true', 'key101', 'SILVER');
insert into MEMBER values('vkfks102@naver.com', 2, '이름102', '닉네임102', 'qlqjs102@', 0, 'true', 'key102', 'SILVER');
insert into MEMBER values('vkfks103@naver.com', 2, '이름103', '닉네임103', 'qlqjs103@', 0, 'true', 'key103', 'SILVER');
insert into MEMBER values('vkfks104@naver.com', 2, '이름104', '닉네임104', 'qlqjs104@', 0, 'true', 'key104', 'SILVER');
insert into MEMBER values('vkfks105@naver.com', 2, '이름105', '닉네임105', 'qlqjs105@', 0, 'true', 'key105', 'SILVER');
insert into MEMBER values('vkfks106@naver.com', 2, '이름106', '닉네임106', 'qlqjs106@', 0, 'true', 'key106', 'SILVER');
insert into MEMBER values('vkfks107@naver.com', 2, '이름107', '닉네임107', 'qlqjs107@', 0, 'true', 'key107', 'SILVER');
insert into MEMBER values('vkfks108@naver.com', 2, '이름108', '닉네임108', 'qlqjs108@', 0, 'true', 'key108', 'SILVER');
insert into MEMBER values('vkfks109@naver.com', 2, '이름109', '닉네임109', 'qlqjs109@', 0, 'true', 'key109', 'SILVER');
insert into MEMBER values('vkfks110@naver.com', 2, '이름110', '닉네임110', 'qlqjs110@', 0, 'true', 'key110', 'SILVER');

--OWNER
insert into OWNER values('vkfks101@naver.com', null, '이름101', '111-11-11101', '회사명101', '회사주소101', '02-111-1101');
insert into OWNER values('vkfks102@naver.com', null, '이름102', '111-11-11102', '회사명102', '회사주소102', '02-111-1102');
insert into OWNER values('vkfks103@naver.com', null, '이름103', '111-11-11103', '회사명103', '회사주소103', '02-111-1103');
insert into OWNER values('vkfks104@naver.com', null, '이름104', '111-11-11104', '회사명104', '회사주소104', '02-111-1104');
insert into OWNER values('vkfks105@naver.com', null, '이름105', '111-11-11105', '회사명105', '회사주소105', '02-111-1105');
insert into OWNER values('vkfks106@naver.com', null, '이름106', '111-11-11106', '회사명106', '회사주소106', '02-111-1106');
insert into OWNER values('vkfks107@naver.com', null, '이름107', '111-11-11107', '회사명107', '회사주소107', '02-111-1107');
insert into OWNER values('vkfks108@naver.com', null, '이름108', '111-11-11108', '회사명108', '회사주소108', '02-111-1108');
insert into OWNER values('vkfks109@naver.com', null, '이름109', '111-11-11109', '회사명109', '회사주소109', '02-111-1109');
insert into OWNER values('vkfks110@naver.com', null, '이름110', '111-11-11110', '회사명110', '회사주소110', '02-111-1110');

--CAMP
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '속리산알프스야영장', --캠핑장명
    '충청북도 보은군 산외면 속리산로 1842-12', --주소
    '010-3709-6708', --캠핑장전화번호
    10, --캠핑장 사이트 수
    40, --1일최대수용인원
    0, --주차장수
    '', --편의시설
    '대피로 및 대피시설', --안전시설
    '화장실,샤워실', --기타부대시설
    '043-540-3393', --관리기관전화번호
    '보은군 문화관광과', --관리기관명
    0, --예약횟수
    '캠핑장소개102', --캠핑장소개
    20000
);
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '늘푸른캠핑장', --캠핑장명
    '경기도 구리시 동구릉로459번길 181', --주소
    '031-572-4511', --캠핑장전화번호
    15, --캠핑장 사이트 수
    60, --1일최대수용인원
    8, --주차장수
    '화장실,샤워실,식기세척장,전기시설', --편의시설
    '소화기,CCTV,방송시설', --안전시설
    '글램핑 10동', --기타부대시설
    '031-550-3788', --관리기관전화번호
    '경기도 구리시청', --관리기관명
    103, --예약횟수
    '캠핑장소개103', --캠핑장소개
    20000
);
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '에스글램핑', --캠핑장명
    '충청남도 천안시 동남구 풍세면 호정1길 28-17', --주소
    '041-565-3564', --캠핑장전화번호
    26, --캠핑장 사이트 수
    100, --1일최대수용인원
    26, --주차장수
    '매점,전기시설,화장실,취사시설,샤워실', --편의시설
    '소화기,방송장비,대피공간', --안전시설
    '', --기타부대시설
    '041-565-3564', --관리기관전화번호
    '김유진', --관리기관명
    104, --예약횟수
    '캠핑장소개104', --캠핑장소개
    20000
);
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '캠핑하우스', --캠핑장명
    '충청남도 천안시 동남구 용곡동 316-14', --주소
    '041-000-0000', --캠핑장전화번호
    5, --캠핑장 사이트 수
    26, --1일최대수용인원
    4, --주차장수
    '매점,전기시설,화장실,취사시설,샤워실', --편의시설
    '소화기,방송장비,대피공간', --안전시설
    '', --기타부대시설
    '041-000-0000', --관리기관전화번호
    '정상진', --관리기관명
    105, --예약횟수
    '캠핑장소개105', --캠핑장소개
    20000
);
--포레스트카라반
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '포레스트카라반', --캠핑장명
    '충청남도 천안시 동남구 문암로 22', --주소
    '041-000-0000', --캠핑장전화번호
    15, --캠핑장 사이트 수
    80, --1일최대수용인원
    20, --주차장수
    '매점,전기시설,화장실,취사시설,샤워실', --편의시설
    '소화기,방송장비,대피공간', --안전시설
    '', --기타부대시설
    '041-000-0000', --관리기관전화번호
    '제응보', --관리기관명
    106, --예약횟수
    '캠핑장소개106', --캠핑장소개
    20000
);
--계룡산글램핑
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '계룡산글램핑', --캠핑장명
    '충청남도 공주시 반포면 계룡대로 1352', --주소
    '041-000-0000', --캠핑장전화번호
    16, --캠핑장 사이트 수
    64, --1일최대수용인원
    0, --주차장수
    '화장실,취사장,샤워장', --편의시설
    '소화기', --안전시설
    '', --기타부대시설
    '041-840-8088', --관리기관전화번호
    '공주시청', --관리기관명
    107, --예약횟수
    '캠핑장소개107', --캠핑장소개
    20000
);
--자연이랑캠프
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '자연이랑캠프', --캠핑장명
    '강원도 영월군 무릉도원면 무릉법흥로 1174', --주소
    '000-000-0000', --캠핑장전화번호
    12, --캠핑장 사이트 수
    48, --1일최대수용인원
    0, --주차장수
    '화장실,샤워실,개수대', --편의시설
    '안전게시물,소화기,비상용방송장비', --안전시설
    '카라반 2동', --기타부대시설
    '033-370-2541', --관리기관전화번호
    '강원도 영월군청', --관리기관명
    108, --예약횟수
    '캠핑장소개108', --캠핑장소개
    20000
);							
--비토섬오토캠핑장
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '비토섬오토캠핑장', --캠핑장명
    '경상남도 사천시 서포면 토끼로 245-5', --주소
    '055-855-4241', --캠핑장전화번호
    9, --캠핑장 사이트 수
    80, --1일최대수용인원
    16, --주차장수
    '전기시설, 화장실, 공동 바베큐실', --편의시설
    '안전펜스, 소화기', --안전시설
    '카라반 5개', --기타부대시설
    '055-831-2725', --관리기관전화번호
    '사천시 관광진흥과', --관리기관명
    109, --예약횟수
    '캠핑장소개109', --캠핑장소개
    20000
);
--골드펫리조트
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '골드펫리조트', --캠핑장명
    '경기도 용인시 기흥구 기흥단지로 406	', --주소
    '031-286-9111', --캠핑장전화번호
    23, --캠핑장 사이트 수
    92, --1일최대수용인원
    0, --주차장수
    '하수도시설,전기시설,개수대,샤워실', --편의시설
    '소화기,방송장비,안전게시물,관리요원', --안전시설
    '', --기타부대시설
    '031-324-2117', --관리기관전화번호
    '용인시청', --관리기관명
    110, --예약횟수
    '캠핑장소개110', --캠핑장소개
    20000
);

--SORT
--속리산알프스야영장
insert into SORT values(SORT_SEQ.nextval, 12, '캠핑장', 'A존', 4, 180000, '알프스A존_102.jpg', '알프스A존.jpg');
insert into SORT values(SORT_SEQ.nextval, 12, '캠핑장', 'B존', 4, 200000, '알프스B존_102.jpg', '알프스B존.jpg');
--늘푸른캠핑장
insert into SORT values(SORT_SEQ.nextval, 13, '캠핑장', 'A존', 4, 200000, '늘푸른A존_103.jpg', '늘푸른A존.jpg');
insert into SORT values(SORT_SEQ.nextval, 13, '캠핑장', 'B존', 4, 180000, '늘푸른B존_103.jpg', '늘푸른B존.jpg');
insert into SORT values(SORT_SEQ.nextval, 13, '글램핑', '글램핑1호', 2, 150000, '늘푸른글램핑1호_103.jpg', '늘푸른글램핑1호.jpg');
insert into SORT values(SORT_SEQ.nextval, 13, '글램핑', '글램핑1호', 2, 150000, '늘푸른글램핑2호_103.jpg', '늘푸른글램핑2호.jpg');
--에스글램핑
insert into SORT values(SORT_SEQ.nextval, 14, '글램핑', '글램핑1호', 4, 200000, '에스글램핑1호_104.jpg', '에스글램핑1호.jpg');
insert into SORT values(SORT_SEQ.nextval, 14, '글램핑', '글램핑2호', 2, 150000, '에스글램핑2호_104.jpg', '에스글램핑2호.jpg');
--캠핑하우스
insert into SORT values(SORT_SEQ.nextval, 15, '카라반', '카라반1호', 4, 150000, '카라반1호_105.jpg', '카라반1호.jpg');
insert into SORT values(SORT_SEQ.nextval, 15, '카라반', '카라반2호', 4, 170000, '카라반2호_105.jpg', '카라반2호.jpg');
insert into SORT values(SORT_SEQ.nextval, 15, '카라반', '카라반3호', 4, 200000, '카라반3호_105.jpg', '카라반3호.jpg');
--포레스트카라반
insert into SORT values(SORT_SEQ.nextval, 16, '카라반', '카라반1호', 4, 150000, '포레스트카라반1호_106.jpg', '포레스트카라반1호.jpg');
insert into SORT values(SORT_SEQ.nextval, 16, '카라반', '카라반2호', 8, 300000, '포레스트카라반2호_106.jpg', '포레스트카라반2호.jpg');
--계룡산글램핑
insert into SORT values(SORT_SEQ.nextval, 17, '글램핑', '글램핑1호', 4, 150000, '계룡산글램핑1호_107.jpg', '계룡산글램핑1호.jpg');
insert into SORT values(SORT_SEQ.nextval, 17, '글램핑', '글램핑1호', 6, 200000, '계룡산글램핑2호_107.jpg', '계룡산글램핑2호.jpg');
--자연이랑캠프
insert into SORT values(SORT_SEQ.nextval, 18, '캠핑장', 'A존', 6, 150000, '자연이랑A존_108.jpg', '자연이랑A존.jpg');
insert into SORT values(SORT_SEQ.nextval, 18, '캠핑장', 'B존', 8, 200000, '자연이랑B존_108.jpg', '자연이랑B존.jpg');
--비토섬오토캠핑장
insert into SORT values(SORT_SEQ.nextval, 19, '글램핑', '글램핑1호', 4, 150000, '비토섬글램핑1호_109.jpg', '비토섬글램핑1호.jpg');
insert into SORT values(SORT_SEQ.nextval, 19, '카라반', '카라반1호', 4, 200000, '비토섬카라반1호_109.jpg', '비토섬카라반1호.jpg');
--골드펫리조트
insert into SORT values(SORT_SEQ.nextval, 20, '글램핑', '글램핑1호', 4, 150000, '골드펫글램핑1호_110.jpg', '골드펫글램핑1호.jpg');
insert into SORT values(SORT_SEQ.nextval, 20, '글램핑', '글램핑2호', 6, 200000, '골드펫글램핑2호_110.jpg', '골드펫글램핑2호.jpg');
insert into SORT values(SORT_SEQ.nextval, 20, '카라반', '카라반1호', 4, 200000, '골드펫카라반1호_110.jpg', '골드펫카라반1호.jpg');

--IMG
--속리산알프스야영장
insert into IMG values(IMG_SEQ.nextval, 12, '속리산알프스야영장-thumb_102.jpg', '속리산알프스야영장-thumb.jpg', 11102, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 12, '속리산알프스야영장1_102.jpg', '속리산알프스야영장1.jpg', 11102, 'detail');
insert into IMG values(IMG_SEQ.nextval, 12, '속리산알프스야영장2_102.jpg', '속리산알프스야영장2.jpg', 11102, 'detail');
insert into IMG values(IMG_SEQ.nextval, 12, '속리산알프스야영장3_102.jpg', '속리산알프스야영장3.jpg', 11102, 'detail');
--늘푸른캠핑장
insert into IMG values(IMG_SEQ.nextval, 13, '늘푸른캠핑장-thumb_103.jpg', '늘푸른캠핑장-thumb.jpg', 11103, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 13, '늘푸른캠핑장1_103.jpg', '늘푸른캠핑장1.jpg', 11103, 'detail');
insert into IMG values(IMG_SEQ.nextval, 13, '늘푸른캠핑장2_103.jpg', '늘푸른캠핑장2.jpg', 11103, 'detail');
insert into IMG values(IMG_SEQ.nextval, 13, '늘푸른캠핑장3_103.jpg', '늘푸른캠핑장3.jpg', 11103, 'detail');
--에스글램핑
insert into IMG values(IMG_SEQ.nextval, 14, '에스글램핑-thumb_104.jpg', '에스글램핑-thumb.jpg', 11104, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 14, '에스글램핑1_104.jpg', '에스글램핑1.jpg', 11104, 'detail');
insert into IMG values(IMG_SEQ.nextval, 14, '에스글램핑2_104.jpg', '에스글램핑2.jpg', 11104, 'detail');
--캠핑하우스
insert into IMG values(IMG_SEQ.nextval, 15, '캠핑하우스-thumb_105.jpg', '캠핑하우스-thumb.jpg', 11105, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 15, '캠핑하우스1_105.jpg', '캠핑하우스1.jpg', 11105, 'detail');
insert into IMG values(IMG_SEQ.nextval, 15, '캠핑하우스2_105.jpg', '캠핑하우스2.jpg', 11105, 'detail');
insert into IMG values(IMG_SEQ.nextval, 15, '캠핑하우스3_105.jpg', '캠핑하우스3.jpg', 11105, 'detail');
--포레스트카라반
insert into IMG values(IMG_SEQ.nextval, 16, '포레스트카라반-thumb_106.jpg', '포레스트카라반-thumb.jpg', 11106, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 16, '포레스트카라반1_106.jpg', '포레스트카라반1.jpg', 11106, 'detail');
insert into IMG values(IMG_SEQ.nextval, 16, '포레스트카라반2_106.jpg', '포레스트카라반2.jpg', 11106, 'detail');
insert into IMG values(IMG_SEQ.nextval, 16, '포레스트카라반3_106.jpg', '포레스트카라반3.jpg', 11106, 'detail');
--포레스트카라반
insert into IMG values(IMG_SEQ.nextval, 17, '계룡산글램핑-thumb_107.jpg', '계룡산글램핑-thumb.jpg', 11107, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 17, '계룡산글램핑1_107.jpg', '계룡산글램핑1.jpg', 11107, 'detail');
insert into IMG values(IMG_SEQ.nextval, 17, '계룡산글램핑2_107.jpg', '계룡산글램핑2.jpg', 11107, 'detail');
insert into IMG values(IMG_SEQ.nextval, 17, '계룡산글램핑3_107.jpg', '계룡산글램핑3.jpg', 11107, 'detail');
--자연이랑캠프
insert into IMG values(IMG_SEQ.nextval, 18, '자연이랑캠프-thumb_108.jpg', '자연이랑캠프-thumb.jpg', 11108, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 18, '자연이랑캠프1_108.jpg', '자연이랑캠프1.jpg', 11108, 'detail');
insert into IMG values(IMG_SEQ.nextval, 18, '자연이랑캠프2_108.jpg', '자연이랑캠프2.jpg', 11108, 'detail');
insert into IMG values(IMG_SEQ.nextval, 18, '자연이랑캠프3_108.jpg', '자연이랑캠프3.jpg', 11108, 'detail');
--비토섬오토캠핑장
insert into IMG values(IMG_SEQ.nextval, 19, '비토섬오토캠핑장-thumb_109.jpg', '비토섬오토캠핑장-thumb.jpg', 11109, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 19, '비토섬오토캠핑장1_109.jpg', '자연이랑캠프1.jpg', 11109, 'detail');
insert into IMG values(IMG_SEQ.nextval, 19, '비토섬오토캠핑장2_109.jpg', '자연이랑캠프2.jpg', 11109, 'detail');
insert into IMG values(IMG_SEQ.nextval, 19, '비토섬오토캠핑장3_109.jpg', '자연이랑캠프3.jpg', 11109, 'detail');
--골드펫리조트
insert into IMG values(IMG_SEQ.nextval, 20, '골드펫리조트-thumb_110.jpg', '골드펫리조트-thumb.jpg', 11110, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 20, '골드펫리조트1_110.jpg', '골드펫리조트1.jpg', 11110, 'detail');
insert into IMG values(IMG_SEQ.nextval, 20, '골드펫리조트2_110.jpg', '골드펫리조트2.jpg', 11110, 'detail');
insert into IMG values(IMG_SEQ.nextval, 20, '골드펫리조트3_110.jpg', '골드펫리조트3.jpg', 11110, 'detail');

update OWNER set CAMP_IDX = 12 where EMAIL = 'vkfks101@naver.com';
update OWNER set CAMP_IDX = 13 where EMAIL = 'vkfks102@naver.com';
update OWNER set CAMP_IDX = 14 where EMAIL = 'vkfks103@naver.com';
update OWNER set CAMP_IDX = 15 where EMAIL = 'vkfks104@naver.com';
update OWNER set CAMP_IDX = 16 where EMAIL = 'vkfks105@naver.com';
update OWNER set CAMP_IDX = 17 where EMAIL = 'vkfks106@naver.com';
update OWNER set CAMP_IDX = 18 where EMAIL = 'vkfks107@naver.com';
update OWNER set CAMP_IDX = 19 where EMAIL = 'vkfks108@naver.com';
update OWNER set CAMP_IDX = 20 where EMAIL = 'vkfks109@naver.com';
commit; 

select CAMP_IDX from CAMP;

--일반회원 vkfks1101@naver.com의 camp_idx=1 일 때 리뷰작성 11개
insert into MEMBER values('vkfks1101@naver.com', 1, '이름1101', '닉네임1101', 'qlqjs1101@', 0, 'true', 'key110', 'SILVER');
insert into REVIEW values(REVIEW_SEQ.nextval, 1, 'vkfks1101@naver.com', '닉네임1101', '내용이다1101', SYSDATE, 2.5);
insert into REVIEW values(REVIEW_SEQ.nextval, 1, 'vkfks1101@naver.com', '닉네임1101', '내용이다1102', SYSDATE, 3);
insert into REVIEW values(REVIEW_SEQ.nextval, 1, 'vkfks1101@naver.com', '닉네임1101', '내용이다1103', SYSDATE, 4);
insert into REVIEW values(REVIEW_SEQ.nextval, 1, 'vkfks1101@naver.com', '닉네임1101', '내용이다1104', SYSDATE, 5);
insert into REVIEW values(REVIEW_SEQ.nextval, 1, 'vkfks1101@naver.com', '닉네임1101', '내용이다1105', SYSDATE, 3);
insert into REVIEW values(REVIEW_SEQ.nextval, 1, 'vkfks1101@naver.com', '닉네임1101', '에베베2개준다', SYSDATE, 2);
insert into REVIEW values(REVIEW_SEQ.nextval, 1, 'vkfks1101@naver.com',  '닉네임1101', '별점 1.5개준다!@', SYSDATE, 1.5);
insert into REVIEW values(REVIEW_SEQ.nextval, 1, 'vkfks1101@naver.com', '닉네임1101', '별점 2개준다!', SYSDATE, 2);
insert into REVIEW values(REVIEW_SEQ.nextval, 1, 'vkfks1101@naver.com', '닉네임1101', '별점3.5개준다!', SYSDATE, 3.5);
insert into REVIEW values(REVIEW_SEQ.nextval, 1, 'vkfks1101@naver.com', '닉네임1101', '별점4점준다!', SYSDATE, 4);
insert into REVIEW values(REVIEW_SEQ.nextval, 1, 'vkfks1101@naver.com', '닉네임1101', '별점한개준다!', SYSDATE, 1);

-------------som-------------
--<회원>
--1
insert into MEMBER values('email201@gmail.com', 2, '이름201', '닉네임201', 'qwer1234@', 0,  'true', '00000201', 'SILVER');
insert into OWNER values('email201@gmail.com', null, '이름201', '123-45-67890', '회사명201', '회사주소201', '02-1234-1234');
--2
insert into MEMBER values('email202@gmail.com', 2, '이름202', '닉네임202', 'qwer1234@', 0,  'true', '00000202', 'SILVER');
insert into OWNER values('email202@gmail.com', null, '이름202', '123-45-67890', '회사명202', '회사주소202', '02-1234-1234');
--3
insert into MEMBER values('email203@gmail.com', 2, '이름203', '닉네임203', 'qwer1234@', 0,  'true', '00000203', 'SILVER');
insert into OWNER values('email203@gmail.com', null, '이름203', '123-45-67890', '회사명203', '회사주소203', '02-1234-1234');
--4
insert into MEMBER values('email204@gmail.com', 2, '이름204', '닉네임204', 'qwer1234@', 0,  'true', '00000204', 'SILVER');
insert into OWNER values('email204@gmail.com', null, '이름204', '123-45-67890', '회사명204', '회사주소204', '02-1234-1234');
--5
insert into MEMBER values('email205@gmail.com', 2, '이름205', '닉네임205', 'qwer1234@', 0,  'true', '00000205', 'SILVER');
insert into OWNER values('email205@gmail.com', null, '이름205', '123-45-67890', '회사명205', '회사주소205', '02-1234-1234');
--6
insert into MEMBER values('email206@gmail.com', 2, '이름206', '닉네임206', 'qwer1234@', 0,  'true', '00000206', 'SILVER');
insert into OWNER values('email206@gmail.com', null, '이름206', '123-45-67890', '회사명206', '회사주소206', '02-1224-1234');
--7
insert into MEMBER values('email207@gmail.com', 2, '이름207', '닉네임207', 'qwer1234@', 0,  'true', '00000207', 'SILVER');
insert into OWNER values('email207@gmail.com', null, '이름207', '123-45-67890', '회사명207', '회사주소207', '02-1234-1234');
--8
insert into MEMBER values('email208@gmail.com', 2, '이름208', '닉네임208', 'qwer1234@', 0,  'true', '00000208', 'SILVER');
insert into OWNER values('email208@gmail.com', null, '이름208', '123-45-67890', '회사명208', '회사주소208', '02-1234-1234');
--9
insert into MEMBER values('email209@gmail.com', 2, '이름209', '닉네임209', 'qwer1234@', 0,  'true', '00000209', 'SILVER');
insert into OWNER values('email209@gmail.com', null, '이름209', '123-45-67890', '회사명209', '회사주소209', '02-1234-1234');
--10
insert into MEMBER values('email210@gmail.com', 2, '이름210', '닉네임210', 'qwer1234@', 0,  'true', '00000210', 'SILVER');
insert into OWNER values('email210@gmail.com', null, '이름210', '123-45-67890', '회사명210', '회사주소210', '02-1234-1234');


--<캠핑장>
--1
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '용인자연숲캠핑장', --캠핑장명
    '경기도 용인시 처인구 원삼면 원양로591번길 93-34', --주소
    '010-9424-7978', --캠핑장전화번호
    13, --캠핑장 사이트 수
    50, --1일최대수용인원
    0, --주차장수
    '하수도시설, 전기시설, 개수대', --편의시설
    '소화기, 확성기, 안전게시물, 관리요원, 대피소', --안전시설
    null, --기타부대시설
    '031-324-2117', --관리기관전화번호
    '용인시청', --관리기관명
    0,  --예약횟수
    '용인 자연숲 캠핑장입니다.',  --캠핑장 설명
    20000 --바베큐가격
);
insert into SORT values(SORT_SEQ.nextval, 21, '파쇄석사이트', 'A파쇄석사이트', 4, 50000, '용인자연숲캠핑장-A파쇄석사이트_201.jpg', '용인자연숲캠핑장-A파쇄석사이트.jpg');
insert into SORT values(SORT_SEQ.nextval, 21, 'B사이트', 'B사이트', 4, 50000, '용인자연숲캠핑장-B사이트_201.jpg', '용인자연숲캠핑장-B사이트.jpg');
insert into IMG values(IMG_SEQ.nextval, 21, '용인자연숲캠핑장-thumb_201.jpg', '용인자연숲캠핑장-thumb.jpg', 119359, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 21, '용인자연숲캠핑장1_201.jpg', '용인자연숲캠핑장1.jpg', 169911, 'detail');
insert into IMG values(IMG_SEQ.nextval, 21, '용인자연숲캠핑장2_201.jpg', '용인자연숲캠핑장2.jpg', 169911, 'detail');
insert into IMG values(IMG_SEQ.nextval, 21, '용인자연숲캠핑장3_201.jpg', '용인자연숲캠핑장3.jpg', 169911, 'detail');
update OWNER set CAMP_IDX = 21 where EMAIL = 'email201@gmail.com';
--2
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '숲속에 안뜰', --캠핑장명
    '경기도 용인시 처인구 원삼면 원양로 250-23', --주소
    '031-339-1599', --캠핑장전화번호
    8, --캠핑장 사이트 수
    32, --1일최대수용인원
    0, --주차장수
    '전기시설,하수도시설', --편의시설
    '소화기, 확성기, 안전게시물, 관리요원', --안전시설
    null, --기타부대시설
    '031-324-2117', --관리기관전화번호
    '용인시청', --관리기관명
    0,  --예약횟수
    '숲속에 안뜰 캠핑장입니다.',  --캠핑장 설명
    20000 --바베큐가격
);

insert into SORT values(SORT_SEQ.nextval, 22, '파쇄석사이트', '캠핑파쇄사이트A', 4, 50000, '숲속에안뜰-캠핑파쇄사이트A_202.jpg', '숲속에안뜰-캠핑파쇄사이트A.jpg');
insert into SORT values(SORT_SEQ.nextval, 22, '파쇄석사이트', '캠핑잔디사이트B', 4, 50000, '숲속에안뜰-캠핑잔디사이트B_202.jpg', '숲속에안뜰-캠핑잔디사이트B.jpg');
insert into IMG values(IMG_SEQ.nextval, 22, '숲속에안뜰-thumb_202.jpg', '숲속에안뜰-thumb.jpg', 524964, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 22, '숲속에안뜰1_202.jpg', '숲속에안뜰1.jpg', 524964, 'detail');
insert into IMG values(IMG_SEQ.nextval, 22, '숲속에안뜰2_202.jpg', '숲속에안뜰2.jpg', 524964, 'detail');
insert into IMG values(IMG_SEQ.nextval, 22, '숲속에안뜰3_202.jpg', '숲속에안뜰3.jpg', 524964, 'detail');
update OWNER set CAMP_IDX = 22 where EMAIL = 'email202@gmail.com';

--3
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '회문산 자연휴양림 야영장', --캠핑장명
    '전북 순창군 구림면 안심길 214', --주소
    '063-653-4779', --캠핑장전화번호
    30, --캠핑장 사이트 수
    120, --1일최대수용인원
    30, --주차장수
    '화장실, 취사시설, 샤워실', --편의시설
    '소화기', --안전시설
    null, --기타부대시설
    '063-650-1631', --관리기관전화번호
    '순창군청', --관리기관명
    0,  --예약횟수
    '회문산 캠핑장입니다.',  --캠핑장 설명
    20000 --바베큐가격
);

insert into SORT values(SORT_SEQ.nextval, 23, '야영데크', '야영데크-5인실', 4, 50000, '회문산자연휴양림-야영데크-5인실_203.jpg', '회문산자연휴양림-야영데크-5인실.jpg');
insert into SORT values(SORT_SEQ.nextval, 23, '파쇄석사이트', '야영데크-6인실', 4, 50000, '회문산자연휴양림-야영데크-6인실_203.jpg', '회문산자연휴양림-야영데크-6인실.jpg');
insert into IMG values(IMG_SEQ.nextval, 23, '회문산자연휴양림-thumb_203.jpg', '회문산자연휴양림-thumb.jpg', 524964, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 23, '회문산자연휴양림1_203.jpg', '회문산자연휴양림1.jpg', 524964, 'detail');
insert into IMG values(IMG_SEQ.nextval, 23, '회문산자연휴양림2_203.jpg', '회문산자연휴양림2.jpg', 524964, 'detail');
insert into IMG values(IMG_SEQ.nextval, 23, '회문산자연휴양림3_203.jpg', '회문산자연휴양림3.jpg', 524964, 'detail');
update OWNER set CAMP_IDX = 23 where EMAIL = 'email203@gmail.com';

--4
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '블루웨일', --캠핑장명
    '경상남도 고성군 삼산면 두포5길 113-139', --주소
    '055-673-4994', --캠핑장전화번호
    29, --캠핑장 사이트 수
    116, --1일최대수용인원
    30, --주차장수
    '화장실, 샤워실, 취사장', --편의시설
    '소화기', --안전시설
    null, --기타부대시설
    '055-670-2234', --관리기관전화번호
    '고성군 미래산업과', --관리기관명
    0,  --예약횟수
    '블루웨일 캠핑장입니다.',  --캠핑장 설명
    20000 --바베큐가격
);

insert into SORT values(SORT_SEQ.nextval, 24, '캐리비안', '캐리비안1', 4, 150000, '블루웨일-캐리비안1_204.jpg', '블루웨일-캐리비안1.jpg');
insert into SORT values(SORT_SEQ.nextval, 24, '몰디브', '몰디브1', 4, 150000, '블루웨일-몰디브1_204.jpg', '블루웨일-몰디브1.jpg');
insert into SORT values(SORT_SEQ.nextval, 24, '하와이', '하와이1', 4, 150000, '블루웨일-하와이1_204.jpg', '블루웨일-하와이1.jpg');
insert into IMG values(IMG_SEQ.nextval, 24, '블루웨일-thumb_204.jpg', '블루웨일-thumb.jpg', 524964, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 24, '블루웨일1_204.jpg', '블루웨일1.jpg', 524964, 'detail');
insert into IMG values(IMG_SEQ.nextval, 24, '블루웨일2_204.jpg', '블루웨일2.jpg', 524964, 'detail');
insert into IMG values(IMG_SEQ.nextval, 24, '블루웨일3_204.jpg', '블루웨일3.jpg', 524964, 'detail');
update OWNER set CAMP_IDX = 24 where EMAIL = 'email204@gmail.com';

--5
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '청광새들녘영농조합법인야영장', --캠핑장명
    '경상남도 고성군 개천면 영회로 1296', --주소
    '055-672-7985', --캠핑장전화번호
    19, --캠핑장 사이트 수
    76, --1일최대수용인원
    23, --주차장수
    '화장실, 샤워실, 취사장', --편의시설
    '소화기', --안전시설
    null, --기타부대시설
    '055-670-2234', --관리기관전화번호
    '고성군 미래산업과', --관리기관명
    0,  --예약횟수
    ' 청광 새들녘 영농조합 법인 야영장입니다.',  --캠핑장 설명
    20000 --바베큐가격
);

insert into SORT values(SORT_SEQ.nextval, 25, '캠핑장', '캠핑장1', 5, 30000, '청광새들녘영농조합법인야영장-캠핑장1_205.jpg', '청광새들녘영농조합법인야영장-캠핑장1.jpg');
insert into IMG values(IMG_SEQ.nextval, 25, '청광새들녘영농조합법인야영장-thumb_205.jpg', '청광새들녘영농조합법인야영장-thumb.jpg', 524964, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 25, '청광새들녘영농조합법인야영장1_205.jpg', '청광새들녘영농조합법인야영장1.jpg', 524964, 'detail');
insert into IMG values(IMG_SEQ.nextval, 25, '청광새들녘영농조합법인야영장2_205.jpg', '청광새들녘영농조합법인야영장2.jpg', 524964, 'detail');
insert into IMG values(IMG_SEQ.nextval, 25, '청광새들녘영농조합법인야영장3_205.jpg', '청광새들녘영농조합법인야영장3.jpg', 524964, 'detail');
update OWNER set CAMP_IDX = 25 where EMAIL = 'email205@gmail.com';

--6
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '폴라리스야영장', --캠핑장명
    '경상남도 고성군 동해면 조선특구로 2126', --주소
    '055-672-4554', --캠핑장전화번호
    10, --캠핑장 사이트 수
    40, --1일최대수용인원
    10, --주차장수
    '화장실, 샤워실, 취사장', --편의시설
    '소화기', --안전시설
    null, --기타부대시설
    '055-670-2234', --관리기관전화번호
    '고성군 미래산업과', --관리기관명
    0,  --예약횟수
    ' 폴라리스야영장입니다.',  --캠핑장 설명
    20000 --바베큐가격
);

insert into SORT values(SORT_SEQ.nextval, 26, '글램핑', '글램핑A', 4, 79000, '폴라리스야영장-글램핑A_205.jpg', '폴라리스야영장-글램핑A.jpg');
insert into SORT values(SORT_SEQ.nextval, 26, '글램핑', '글램핑B', 4, 79000, '폴라리스야영장-글램핑A_206.jpg', '폴라리스야영장-글램핑A.jpg');
insert into IMG values(IMG_SEQ.nextval, 26, '폴라리스야영장-thumb_206.jpg', '폴라리스야영장-thumb.jpg', 624964, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 26, '폴라리스야영장1_206.jpg', '폴라리스야영장1.jpg', 624964, 'detail');
insert into IMG values(IMG_SEQ.nextval, 26, '폴라리스야영장2_206.jpg', '폴라리스야영장2.jpg', 624964, 'detail');
insert into IMG values(IMG_SEQ.nextval, 26, '폴라리스야영장3_206.jpg', '폴라리스야영장3.jpg', 624964, 'detail');
update OWNER set CAMP_IDX = 26 where EMAIL = 'email206@gmail.com';

--7
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '라파엘 펜션 글램핑', --캠핑장명
    '경상남도 고성군 회화면 당항만로 949', --주소
    '055-673-8318', --캠핑장전화번호
    21, --캠핑장 사이트 수
    84, --1일최대수용인원
    30, --주차장수
    '화장실, 샤워실, 취사장', --편의시설
    '소화기', --안전시설
    '수영장', --기타부대시설
    '055-670-2234', --관리기관전화번호
    '고성군 미래산업과', --관리기관명
    0,  --예약횟수
    ' 라파엘 펜션 글램핑입니다.',  --캠핑장 설명
    20000 --바베큐가격
);

insert into SORT values(SORT_SEQ.nextval, 27, '글램핑', '글램핑-라파엘(17평)', 4, 79000, '라파엘펜션글램핑-글램핑-라파엘(17평)_207.jpg', '라파엘펜션글램핑-글램핑-라파엘(17평).jpg');
insert into SORT values(SORT_SEQ.nextval, 27, '글램핑', '글램핑-줄리(16평)', 4, 79000, '라파엘펜션글램핑-글램핑-줄리(16평)_207.jpg', '라파엘펜션글램핑-글램핑-줄리(16평).jpg');
insert into SORT values(SORT_SEQ.nextval, 27, '글램핑', '글램핑-챨리(14평)', 4, 79000, '라파엘펜션글램핑-글램핑-챨리(14평)_207.jpg', '라파엘펜션글램핑-글램핑-챨리(14평).jpg');
insert into IMG values(IMG_SEQ.nextval, 27, '라파엘펜션글램핑-thumb_207.jpg', '라파엘펜션글램핑-thumb.jpg', 724974, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 27, '라파엘펜션글램핑1_207.jpg', '라파엘펜션글램핑1.jpg', 724974, 'detail');
insert into IMG values(IMG_SEQ.nextval, 27, '라파엘펜션글램핑2_207.jpg', '라파엘펜션글램핑2.jpg', 724974, 'detail');
insert into IMG values(IMG_SEQ.nextval, 27, '라파엘펜션글램핑3_207.jpg', '라파엘펜션글램핑3.jpg', 724974, 'detail');
update OWNER set CAMP_IDX = 27 where EMAIL = 'email207@gmail.com';


--8
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '고성 남산공원 오토캠핑장', --캠핑장명
    '경남 고성군 고성읍 공룡로 3165 (신월리)', --주소
    '070-4152-5255', --캠핑장전화번호
    44, --캠핑장 사이트 수
    176, --1일최대수용인원
    44, --주차장수
    '화장실, 샤워실, 취사장', --편의시설
    '소화기', --안전시설
    null, --기타부대시설
    '055-670-2234', --관리기관전화번호
    '고성군 미래산업과', --관리기관명
    0,  --예약횟수
    '고성 남산공원 오토캠핑장입니다.',  --캠핑장 설명
    20000 --바베큐가격
);

insert into SORT values(SORT_SEQ.nextval, 28, '글램핑', '글램핑1', 4, 150000, '남산공원오토캠핑장-글램핑-글램핑1_208.jpg', '남산공원오토캠핑장-글램핑-글램핑1.jpg');
insert into SORT values(SORT_SEQ.nextval, 28, '카라반', '카라반1', 6, 150000, '남산공원오토캠핑장-카라반-카라반1_208.jpg', '남산공원오토캠핑장-카라반-카라반1.jpg');
insert into SORT values(SORT_SEQ.nextval, 28, '카라반', '카라반사이트1', 4, 35000, '남산공원오토캠핑장-카라반-카라반사이트1_208.jpg', '남산공원오토캠핑장-카라반-카라반사이트1.jpg');
insert into SORT values(SORT_SEQ.nextval, 28, '텐트', '텐트사이트1', 4, 25000, '남산공원오토캠핑장-텐트-텐트사이트1_208.jpg', '남산공원오토캠핑장-텐트-텐트사이트1.jpg');
insert into IMG values(IMG_SEQ.nextval, 28, '남산공원오토캠핑장-thumb_208.jpg', '남산공원오토캠핑장-thumb.jpg', 824984, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 28, '남산공원오토캠핑장1_208.jpg', '남산공원오토캠핑장1.jpg', 824984, 'detail');
insert into IMG values(IMG_SEQ.nextval, 28, '남산공원오토캠핑장2_208.jpg', '남산공원오토캠핑장2.jpg', 824984, 'detail');
insert into IMG values(IMG_SEQ.nextval, 28, '남산공원오토캠핑장3_208.jpg', '남산공원오토캠핑장3.jpg', 824984, 'detail');
update OWNER set CAMP_IDX = 28 where EMAIL = 'email208@gmail.com';

--9
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '고성 잔디 캠핑장', --캠핑장명
    '경상남도 고성군 하일면 공룡로 1287', --주소
    '010-9131-8560', --캠핑장전화번호
    7, --캠핑장 사이트 수
    27, --1일최대수용인원
    14, --주차장수
    '화장실, 샤워실, 취사장', --편의시설
    '소화기', --안전시설
    null, --기타부대시설
    '055-670-2234', --관리기관전화번호
    '고성군 미래산업과', --관리기관명
     0,  --예약횟수
    ' 고성 잔디 캠핑장입니다.',  --캠핑장 설명
    20000 --바베큐가격
);

insert into SORT values(SORT_SEQ.nextval, 29, '일반텐트사이트', '일반텐트사이트1', 4, 40000, '고성잔디캠핑장-일반텐트사이트_209.jpg', '고성잔디캠핑장-일반텐트사이트.jpg');
insert into SORT values(SORT_SEQ.nextval, 29, '평상데크사이트', '평상데크사이트1', 4, 50000, '고성잔디캠핑장-평상데크사이트_209.jpg', '고성잔디캠핑장-평상데크사이트.jpg');
insert into IMG values(IMG_SEQ.nextval, 29, '고성잔디캠핑장-thumb_209.jpg', '고성잔디캠핑장-thumb.jpg', 924994, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 29, '고성잔디캠핑장1_209.jpg', '고성잔디캠핑장1.jpg', 924994, 'detail');
insert into IMG values(IMG_SEQ.nextval, 29, '고성잔디캠핑장2_209.jpg', '고성잔디캠핑장2.jpg', 924994, 'detail');
insert into IMG values(IMG_SEQ.nextval, 29, '고성잔디캠핑장3_209.jpg', '고성잔디캠핑장3.jpg', 924994, 'detail');
update OWNER set CAMP_IDX = 29 where EMAIL = 'email209@gmail.com';

--10
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '당항포관광지 오토캠핑장', --캠핑장명
    '경상남도 고성군 회화면 당항만로 1116', --주소
    '055-670-4501', --캠핑장전화번호
    237, --캠핑장 사이트 수
    948, --1일최대수용인원
    237, --주차장수
    '화장실, 샤워실, 취사장', --편의시설
    '소화기', --안전시설
    null, --기타부대시설
    '055-670-2234', --관리기관전화번호
    '고성군 미래산업과', --관리기관명
    0,  --예약횟수
    '당항포관광지 오토캠핑장입니다.',  --캠핑장 설명
    20000 --바베큐가격
);

insert into SORT values(SORT_SEQ.nextval, 30, 'C사이트', 'C사이트1', 4, 45000, '당항포관광지오토캠핑장-C사이트_210.jpg', '당항포관광지오토캠핑장-C사이트.jpg');
insert into IMG values(IMG_SEQ.nextval, 30, '당항포관광지오토캠핑장-thumb_210.jpg', '당항포관광지오토캠핑장-thumb.jpg', 2101010, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 30, '당항포관광지오토캠핑장1_210.jpg', '당항포관광지오토캠핑장1.jpg', 2101010, 'detail');
insert into IMG values(IMG_SEQ.nextval, 30, '당항포관광지오토캠핑장2_210.jpg', '당항포관광지오토캠핑장2.jpg', 2101010, 'detail');
insert into IMG values(IMG_SEQ.nextval, 30, '당항포관광지오토캠핑장3_210.jpg', '당항포관광지오토캠핑장3.jpg', 2101010, 'detail');
update OWNER set CAMP_IDX = 30 where EMAIL = 'email210@gmail.com';

--silver, gold, diamond
--MEMBER
insert into MEMBER values('simple_photo@naver.com', 2, '이수빈', '키썸','whwldk1@', 0, 'true', '242a24fd', 'DIAMOND');
insert into MEMBER values('simple11@naver.com', 2, '이름1012', '닉네임1012', 'whwkldk1@', 0, 'true', '00000001', 'SILVER');
insert into MEMBER values('simple12@naver.com', 2, '이름1023', '닉네임1023', 'whwkldk1@', 0, 'true', '00000002', 'SILVER');
insert into MEMBER values('simple13@naver.com', 2, '이름1034', '닉네임1034', 'whwkldk1@', 0, 'true', '00000003', 'SILVER');
insert into MEMBER values('simple14@naver.com', 2, '이름1045', '닉네임1045', 'whwkldk1@', 0, 'true', '00000004', 'SILVER');
insert into MEMBER values('simple15@naver.com', 2, '이름1056', '닉네임1056', 'whwkldk1@', 0, 'true', '00000005', 'SILVER');
insert into MEMBER values('simple16@naver.com', 2, '이름1067', '닉네임1067', 'whwkldk1@', 0, 'true', '00000006', 'SILVER');
insert into MEMBER values('simple17@naver.com', 2, '이름1078', '닉네임1078', 'whwkldk1@', 0, 'true', '00000007', 'SILVER');
insert into MEMBER values('simple18@naver.com', 2, '이름1089', '닉네임1089', 'whwkldk1@', 0, 'true', '00000008', 'SILVER');
insert into MEMBER values('simple19@naver.com', 2, '이름1099', '닉네임1090', 'whwkldk1@', 0, 'true', '00000009', 'SILVER');
insert into MEMBER values('simple20@naver.com', 2, '이름1109', '닉네임1107', 'whwkldk1@', 0, 'true', '00000000', 'SILVER');

--OWNER
insert into OWNER values('simple11@naver.com', null, '이름1012', '111-12-11101', '캠프회사명101', '캠프회사주소101', '03-111-1101');
insert into OWNER values('simple12@naver.com', null, '이름1023', '111-13-11102', '캠프회사명102', '캠프회사주소102', '03-111-1102');
insert into OWNER values('simple13@naver.com', null, '이름1034', '111-14-11103', '캠프회사명103', '캠프회사주소103', '03-111-1103');
insert into OWNER values('simple14@naver.com', null, '이름1045', '111-15-11104', '캠프회사명104', '캠프회사주소104', '03-111-1104');
insert into OWNER values('simple15@naver.com', null, '이름1056', '111-16-11105', '캠프회사명105', '캠프회사주소105', '03-111-1105');
insert into OWNER values('simple16@naver.com', null, '이름1067', '111-17-11106', '캠프회사명106', '캠프회사주소106', '03-111-1106');
insert into OWNER values('simple17@naver.com', null, '이름1078', '111-18-11107', '캠프회사명107', '캠프회사주소107', '03-111-1107');
insert into OWNER values('simple18@naver.com', null, '이름1089', '111-19-11108', '캠프회사명108', '캠프회사주소108', '03-111-1108');
insert into OWNER values('simple19@naver.com', null, '이름1099', '111-20-11109', '캠프회사명109', '캠프회사주소109', '03-111-1109');
insert into OWNER values('simple20@naver.com', null, '이름1109', '111-21-11110', '캠프회사명110', '캠프회사주소110', '03-111-1110');

--CAMP
insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '예당관광지', --캠핑장명
    '충청남도 예산군 응봉면 예당관광로 161', --주소
    '041-339-8282', --캠핑장전화번호
    9, --캠핑장 사이트 수
    50, --1일최대수용인원
    0, --주차장수
    '상하수도시설,화장실,취사시설', --편의시설
    '소화기,확성기,안전게시물,대피공간,관리요원', --안전시설
    '', --기타부대시설
    '041-339-7302', --관리기관전화번호
    '예산군청', --관리기관명
    0, --예약횟수
    '캠핑장소개입니드아아앙101', --캠핑장소개
    20000
);

insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '가루실 캠프', --캠핑장명
    '충청남도 예산군 덕산면 가루실길 229-23', --주소
    '041-337-9613', --캠핑장전화번호
    21, --캠핑장 사이트 수
    84, --1일최대수용인원
    0, --주차장수
    '상하수도시설,전기시설,화장실,취사시설,샤워실', --편의시설
    '소화기,확성기,안전게시물,대피공간,관리요원', --안전시설
    '', --기타부대시설
    '041-339-7302', --관리기관전화번호
    '예산군청', --관리기관명
    0, --예약횟수
    '캠핑장소개입니드아아앙102', --캠핑장소개
    20000
);

insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '피플앤독느티캠핑장', --캠핑장명
    '충청남도 예산군 신양면 불원귀곡길 108', --주소
    '041-331-3312', --캠핑장전화번호
    20, --캠핑장 사이트 수
    80, --1일최대수용인원
    0, --주차장수
    '상하수도시설,전기시설,화장실,취사시설,샤워실', --편의시설
    '소화기,확성기,안전게시물,대피공간,관리요원', --안전시설
    '', --기타부대시설
    '041-339-7302', --관리기관전화번호
    '예산군청', --관리기관명
    0, --예약횟수
    '캠핑장소개입니드아아앙103', --캠핑장소개
    20000
);

insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '샬롬빌리지 펜션 야영장', --캠핑장명
    '강원도 평창군 용평면 이승복생가길 114', --주소
    '033-332-2554', --캠핑장전화번호
    15, --캠핑장 사이트 수
    60, --1일최대수용인원
    20, --주차장수
    '샤워실,화장실,개수대', --편의시설
    '소화기,확성기,안전게시물,대피공간,관리요원', --안전시설
    '', --기타부대시설
    '033-330-2752', --관리기관전화번호
    '평창군청', --관리기관명
    0, --예약횟수
    '캠핑장소개입니드아아앙104', --캠핑장소개
    20000
);

insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '예산느티나무캠핑장', --캠핑장명
    '충청남도 예산군 신양면 차동송정길 2-71', --주소
    '041-333-2442', --캠핑장전화번호
    50, --캠핑장 사이트 수
    200, --1일최대수용인원
    0, --주차장수
    '상하수도시설,전기시설,화장실,취사시설,샤워실', --편의시설
    '소화기,확성기,안전게시물,대피공간,관리요원', --안전시설
    '', --기타부대시설
    '041-339-7302', --관리기관전화번호
    '예산군청', --관리기관명
    0, --예약횟수
    '캠핑장소개입니드아아앙105', --캠핑장소개
    20000
);

insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '칠갑산오토캠핑장', --캠핑장명
    '충청남도 청양군 대치면 칠갑산로 668-103', --주소
    '041-940-2428', --캠핑장전화번호
    20, --캠핑장 사이트 수
    200, --1일최대수용인원
    0, --주차장수
    '물놀이장', --편의시설
    '방송시설,CCTV', --안전시설
    '', --기타부대시설
    '041-940-2428', --관리기관전화번호
    '공공시설사업소', --관리기관명
    0, --예약횟수
    '캠핑장소개입니드아아앙106', --캠핑장소개
    20000
);

insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '해오름관광농원', --캠핑장명
    '충청남도 서천군 서면 서인로 576', --주소
    '041-952-1617', --캠핑장전화번호
    39, --캠핑장 사이트 수
    156, --1일최대수용인원
    0, --주차장수
    '전기시설,상하수도,샤워시설,취사장,샤워장,화장실', --편의시설
    '소화기,대피소,방송시설,안전게시판', --안전시설
    '', --기타부대시설
    '041-950-4028', --관리기관전화번호
    '서천군청', --관리기관명
    0, --예약횟수
    '캠핑장소개입니드아아앙107', --캠핑장소개
    20000
);

insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '용봉산글램핑', --캠핑장명
    '충청남도 홍성군 홍북읍 용봉산1길 15', --주소
    '041-633-3739', --캠핑장전화번호
    82, --캠핑장 사이트 수
    328, --1일최대수용인원
    0, --주차장수
    '전기시설,수영장,샤워실', --편의시설
    '소화기,방송장비,안전게시물', --안전시설
    '', --기타부대시설
    '041-630-1256', --관리기관전화번호
    '홍성군청', --관리기관명
    0, --예약횟수
    '캠핑장소개입니드아아앙108', --캠핑장소개
    20000
);

insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '한방자연휴양림', --캠핑장명
    '경상남도 산청군 금서면 동의보감로555번길 186', --주소
    '055-970-6652', --캠핑장전화번호
    36, --캠핑장 사이트 수
    96, --1일최대수용인원
    38, --주차장수
    '화장실, 샤워실,취사장', --편의시설
    '소화기24개, 안전게시물, 대피소', --안전시설
    '글램핑 23동', --기타부대시설
    '055-970-6000', --관리기관전화번호
    '산청군청', --관리기관명
    0, --예약횟수
    '캠핑장소개입니드아아앙109', --캠핑장소개
    20000
);

insert into CAMP values(
    CAMP_SEQ.nextval, --캠피장일련번호 
    '금산산림문화타운캠핑장', --캠핑장명
    '충청남도 금산군 남이면 느티골길 200', --주소
    '041-750-3435', --캠핑장전화번호
    83, --캠핑장 사이트 수
    330, --1일최대수용인원
    350, --주차장수
    '안내소,화장실,개수대,매점', --편의시설
    'cctv,소화기,방송시설', --안전시설
    '놀이형시설', --기타부대시설
    '041-750-2382', --관리기관전화번호
    '금산군청', --관리기관명
    0, --예약횟수
    '캠핑장소개입니드아아앙110', --캠핑장소개
    20000
);

--SORT
--예당관광지
insert into SORT values(SORT_SEQ.nextval, 31, '캠핑장', 'A존', 4, 30000, '예당관광지A존_101.jpg', '예당관광지A존.jpg');
insert into SORT values(SORT_SEQ.nextval, 31, '캠핑장', 'B존', 4, 40000, '예당관광지B존_101.jpg', '예당관광지B존.jpg');

--가루실캠프
insert into SORT values(SORT_SEQ.nextval, 32, '캠핑장', '별존', 4, 45000, '가루실별존_101.jpg', '가루실별존.jpg');
insert into SORT values(SORT_SEQ.nextval, 32, '캠핑장', '달존', 4, 45000, '가루실달존_101.jpg', '가루실달존.jpg');
insert into SORT values(SORT_SEQ.nextval, 32, '글램핑', '가루글램핑', 4, 105000, '글램핑1_101.jpg', '글램핑1.jpg');

--피플앤독느티캠핑장
insert into SORT values(SORT_SEQ.nextval, 33, '캠핑장', '말티존', 4, 55000, '말티존_101.jpg', '말티존.jpg');
insert into SORT values(SORT_SEQ.nextval, 33, '캠핑장', '푸들존', 4, 55000, '푸들존_101.jpg', '푸들존.jpg');
insert into SORT values(SORT_SEQ.nextval, 33, '캠핑장', '포메존', 4, 55000, '포메존_101.jpg', '포메존.jpg');

--샬롬빌리지 펜션 야영장
insert into SORT values(SORT_SEQ.nextval, 34, '캠핑장', 'A존', 4, 65000, '샬롬A존_101.jpg', '샬롬A존.jpg');
insert into SORT values(SORT_SEQ.nextval, 34, '캠핑장', 'B존', 4, 45000, '샬롬B존_101.jpg', '샬롬B존.jpg');

--예산느티나무캠핑장
insert into SORT values(SORT_SEQ.nextval, 35, '캠핑장', 'A존', 4, 35000, '예산A존_101.jpg', '예산A존.jpg');
insert into SORT values(SORT_SEQ.nextval, 35, '캠핑장', 'B존', 4, 35000, '예산B존_101.jpg', '예산B존.jpg');
insert into SORT values(SORT_SEQ.nextval, 35, '캠핑장', 'C존', 4, 35000, '예산C존_101.jpg', '예산C존.jpg');


--칠갑산오토캠핑장
insert into SORT values(SORT_SEQ.nextval, 36, '카라반', 'A구역', 2, 115000, '칠갑산카라반A_101.jpg', '칠갑산카라반A.jpg');
insert into SORT values(SORT_SEQ.nextval, 36, '카라반', 'B구역', 3, 125000, '칠갑산카라반B_101.jpg', '칠갑산카라반B.jpg');
insert into SORT values(SORT_SEQ.nextval, 36, '캠핑장', '칠갑캠핑', 4, 155000, '칠갑산캠핑존_101.jpg', '칠갑산캠핑존.jpg');


--해오름관광농원
insert into SORT values(SORT_SEQ.nextval, 37, '캠핑장', '해존', 4, 45000, '해존캠핑장_101.jpg', '해존캠핑장.jpg');
insert into SORT values(SORT_SEQ.nextval, 37, '캠핑장', '오존', 4, 45000, '오존캠핑장_101.jpg', '오존캠핑장.jpg');
insert into SORT values(SORT_SEQ.nextval, 37, '캠핑장', '름존', 4, 45000, '름존캠핑장_101.jpg', '름존캠핑장.jpg');

--용봉산글램핑
insert into SORT values(SORT_SEQ.nextval, 38, '글램핑', '용존', 4, 45000, '용글램핑1_101.jpg', '용글램핑1.jpg');
insert into SORT values(SORT_SEQ.nextval, 38, '글램핑', '봉존', 4, 45000, '용글램핑2_101.jpg', '용글램핑2.jpg');
insert into SORT values(SORT_SEQ.nextval, 38, '글램핑', '산존', 4, 45000, '용글램핑3_101.jpg', '용글램핑3.jpg');

--한방자연휴양림
insert into SORT values(SORT_SEQ.nextval, 39, '글램핑', '한방존', 4, 45000, '한방_101.jpg', '한방.jpg');
insert into SORT values(SORT_SEQ.nextval, 39, '글램핑', '자연존', 4, 45000, '자연_101.jpg', '자연.jpg');
insert into SORT values(SORT_SEQ.nextval, 39, '글램핑', '한방자연존', 4, 45000, '한방자연_101.jpg', '한방자연.jpg');

--금산산림문화타운캠핑장
insert into SORT values(SORT_SEQ.nextval, 40, '캠핑장', '인삼존', 4, 45000, '인삼_101.jpg', '인삼.jpg');
insert into SORT values(SORT_SEQ.nextval, 40, '캠핑장', '인삼존', 4, 45000, '홍삼_101.jpg', '홍삼.jpg');
insert into SORT values(SORT_SEQ.nextval, 40, '캠핑장', '인삼존', 4, 45000, '산삼_101.jpg', '산삼.jpg');

--IMG
--예당관광지
insert into IMG values(IMG_SEQ.nextval, 31, '예당관광지_thumb_101.jpg', '예당관광지_thumb.jpg', 11101, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 31, '예당관광지1_101.jpg', '예당관광지1.jpg', 11101, 'detail');
insert into IMG values(IMG_SEQ.nextval, 31, '예당관광지2_101.jpg', '예당관광지2.jpg', 11101, 'detail');
insert into IMG values(IMG_SEQ.nextval, 31, '예당관광지3_101.jpg', '예당관광지3.jpg', 11101, 'detail');


--가루실 캠프
insert into IMG values(IMG_SEQ.nextval, 32, '가루실_thumb_102.jpg', '가루실_thumb.jpg', 11102, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 32, '가루실1_102.jpg', '가루실1.jpg', 11102, 'detail');
insert into IMG values(IMG_SEQ.nextval, 32, '가루실2_102.jpg', '가루실2.jpg', 11102, 'detail');
insert into IMG values(IMG_SEQ.nextval, 32, '가루실3_102.jpg', '가루실3.jpg', 11102, 'detail');

--피플앤독느티캠핑장
insert into IMG values(IMG_SEQ.nextval, 33, '피플앤독_thumb_103.jpg', '피플앤독_thumb.jpg', 11103, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 33, '피플앤독1_103.jpg', '피플앤독1.jpg', 11103, 'detail');
insert into IMG values(IMG_SEQ.nextval, 33, '피플앤독2_103.jpg', '피플앤독2.jpg', 11103, 'detail');
insert into IMG values(IMG_SEQ.nextval, 33, '피플앤독3_103.jpg', '피플앤독3.jpg', 11103, 'detail');

--샬롬빌리지 펜션 야영장
insert into IMG values(IMG_SEQ.nextval, 34, '샬롬빌리지_thumb_104.jpg', '샬롬빌리지_thumb.jpg', 11104, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 34, '샬롬빌리지1_104.jpg', '샬롬빌리지1.jpg', 11104, 'detail');
insert into IMG values(IMG_SEQ.nextval, 34, '샬롬빌리지2_104.jpg', '샬롬빌리지2.jpg', 11104, 'detail');
insert into IMG values(IMG_SEQ.nextval, 34, '샬롬빌리지3_104.jpg', '샬롬빌리지3.jpg', 11104, 'detail');
insert into IMG values(IMG_SEQ.nextval, 34, '샬롬빌리지4_104.jpg', '샬롬빌리지4.jpg', 11104, 'detail');

--예산느티나무캠핑장
insert into IMG values(IMG_SEQ.nextval, 35, '예산_thumb_105.jpg', '예산_thumb.jpg', 11105, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 35, '예산1_105.jpg', '예산1.jpg', 11105, 'detail');
insert into IMG values(IMG_SEQ.nextval, 35, '예산2_105.jpg', '예산2.jpg', 11105, 'detail');
insert into IMG values(IMG_SEQ.nextval, 35, '예산3_105.jpg', '예산3.jpg', 11105, 'detail');
insert into IMG values(IMG_SEQ.nextval, 35, '예산4_105.jpg', '예산4.jpg', 11105, 'detail');

--칠갑산오토캠핑장
insert into IMG values(IMG_SEQ.nextval, 36, '칠갑산_thumb_106.jpg', '칠갑산_thumb.jpg', 11106, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 36, '칠갑산1_106.jpg', '칠갑산1.jpg', 11106, 'detail');
insert into IMG values(IMG_SEQ.nextval, 36, '칠갑산2_106.jpg', '칠갑산2.jpg', 11106, 'detail');
insert into IMG values(IMG_SEQ.nextval, 36, '칠갑산3_106.jpg', '칠갑산3.jpg', 11106, 'detail');
insert into IMG values(IMG_SEQ.nextval, 36, '칠갑산4_106.jpg', '칠갑산4.jpg', 11106, 'detail');

--해오름관광농원
insert into IMG values(IMG_SEQ.nextval, 37, '해오름_thumb_107.jpg', '해오름_thumb.jpg', 11107, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 37, '해오름1_107.jpg', '해오름1.jpg', 11107, 'detail');
insert into IMG values(IMG_SEQ.nextval, 37, '해오름2_107.jpg', '해오름2.jpg', 11107, 'detail');
insert into IMG values(IMG_SEQ.nextval, 37, '해오름3_107.jpg', '해오름3.jpg', 11107, 'detail');
insert into IMG values(IMG_SEQ.nextval, 37, '해오름4_107.jpg', '해오름4.jpg', 11107, 'detail');

--용봉산글램핑
insert into IMG values(IMG_SEQ.nextval, 38, '용봉산_thumb_108.jpg', '용봉산_thumb.jpg', 11108, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 38, '용봉산1_108.jpg', '용봉산1.jpg', 11108, 'detail');
insert into IMG values(IMG_SEQ.nextval, 38, '용봉산2_108.jpg', '용봉산2.jpg', 11108, 'detail');
insert into IMG values(IMG_SEQ.nextval, 38, '용봉산3_108.jpg', '용봉산3.jpg', 11108, 'detail');

--한방자연휴양림
insert into IMG values(IMG_SEQ.nextval, 39, '한방자연_thumb_109.jpg', '한방자연_thumb.jpg', 11109, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 39, '한방자연1_109.jpg', '한방자연1.jpg', 11109, 'detail');
insert into IMG values(IMG_SEQ.nextval, 39, '한방자연2_109.jpg', '한방자연2.jpg', 11109, 'detail');
insert into IMG values(IMG_SEQ.nextval, 39, '한방자연3_109.jpg', '한방자연3.jpg', 11109, 'detail');

--금산산림문화타운캠핑장
insert into IMG values(IMG_SEQ.nextval, 40, '금산_thumb_110.jpg', '금산_thumb.jpg', 11110, 'thumb');
insert into IMG values(IMG_SEQ.nextval, 40, '금산1_110.jpg', '금산1.jpg', 11110, 'detail');
insert into IMG values(IMG_SEQ.nextval, 40, '금산2_110.jpg', '금산2.jpg', 11110, 'detail');
insert into IMG values(IMG_SEQ.nextval, 40, '금산3_110.jpg', '금산3.jpg', 11110, 'detail');
insert into IMG values(IMG_SEQ.nextval, 40, '금산4_110.jpg', '금산4.jpg', 11110, 'detail');

update OWNER set CAMP_IDX = 31 where EMAIL = 'simple11@naver.com';
update OWNER set CAMP_IDX = 32 where EMAIL = 'simple12@naver.com';
update OWNER set CAMP_IDX = 33 where EMAIL = 'simple13@naver.com';
update OWNER set CAMP_IDX = 34 where EMAIL = 'simple14@naver.com';
update OWNER set CAMP_IDX = 35 where EMAIL = 'simple15@naver.com';
update OWNER set CAMP_IDX = 36 where EMAIL = 'simple16@naver.com';
update OWNER set CAMP_IDX = 37 where EMAIL = 'simple17@naver.com';
update OWNER set CAMP_IDX = 38 where EMAIL = 'simple18@naver.com';
update OWNER set CAMP_IDX = 39 where EMAIL = 'simple19@naver.com';
update OWNER set CAMP_IDX = 40 where EMAIL = 'simple20@naver.com';
commit; 

select CAMP_IDX from CAMP;
