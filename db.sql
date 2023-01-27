commit;

select * from tabs;

select * from COMPANY;

insert into COMPANY values (1, '삼성');
insert into COMPANY values (2, '네이버');
insert into COMPANY values (3, '카카오');

select * from region;

insert into region values (1, '서울');
insert into region values (2, '경기');

select * from cmember;

insert into cmember values ('samsung', 'samsung', '0000', '0000', null, 'asdf', 1, 1, default, default, default);
insert into cmember values ('naver', 'naver', '0000', '0000', null, 'qwer', 1, 2, default, default, default);
insert into cmember values ('kakao', 'kakao', '0000', '0000', null, 'zxcv', 2, 3, default, default, default);

update cmember set c_pic='samsung.jpg' where c_id = 'samsung';
update cmember set c_pic='kakao.png' where c_id = 'kakao';
update cmember set c_pic='naver.png' where c_id = 'naver';

select * from member;

insert into member (m_id, m_pw, m_name, m_birth, m_tel, m_email, m_pic, m_address, m_ox, m_join, m_activeox, m_gender) values ('hi1', 'hi1111', '김영현', '990101', '010-1111-1111', 'guhaeu@google.com', 'default.png', '서울시 강남구 역삼동', default, sysdate, default, 'm');
insert into member (m_id, m_pw, m_name, m_birth, m_tel, m_email, m_pic, m_address, m_ox, m_join, m_activeox, m_gender) values ('hi2', 'hi2222', '박지우', '990101', '010-1111-1111', 'guhaeu@google.com', 'default.png', '서울시 강남구 역삼동', default, sysdate, default, 'w');
insert into member (m_id, m_pw, m_name, m_birth, m_tel, m_email, m_pic, m_address, m_ox, m_join, m_activeox, m_gender) values ('hi3', 'hi3333', '손지연', '990101', '010-1111-1111', 'guhaeu@google.com', 'default.png', '서울시 강남구 역삼동', default, sysdate, default, 'w');
insert into member (m_id, m_pw, m_name, m_birth, m_tel, m_email, m_pic, m_address, m_ox, m_join, m_activeox, m_gender) values ('hi4', 'hi4444', '안성식', '990101', '010-1111-1111', 'guhaeu@google.com', 'default.png', '서울시 강남구 역삼동', default, sysdate, default, 'm');
insert into member (m_id, m_pw, m_name, m_birth, m_tel, m_email, m_pic, m_address, m_ox, m_join, m_activeox, m_gender) values ('hi5', 'hi5555', '이민영', '990101', '010-1111-1111', 'guhaeu@google.com', 'default.png', '서울시 강남구 역삼동', default, sysdate, default, 'm');
insert into member (m_id, m_pw, m_name, m_birth, m_tel, m_email, m_pic, m_address, m_ox, m_join, m_activeox, m_gender) values ('hi6', 'hi6666', '함원진', '990101', '010-1111-1111', 'guhaeu@google.com', 'default.png', '서울시 강남구 역삼동', default, sysdate, default, 'm');

select * from duty;

insert into duty (duty_seq, duty_name) values (1, '기획/전략');
insert into duty (duty_seq, duty_name) values (2, '마케팅/홍보/조사');
insert into duty (duty_seq, duty_name) values (3, '회계/세무/재무');
insert into duty (duty_seq, duty_name) values (4, '인사/노무/HRD');
insert into duty (duty_seq, duty_name) values (5, '총무/법무/사무');
insert into duty (duty_seq, duty_name) values (6, 'it개발/데이터');
insert into duty (duty_seq, duty_name) values (7, '디자인');
insert into duty (duty_seq, duty_name) values (8, '영업/판매/무역');
insert into duty (duty_seq, duty_name) values (9, '고객상담/TM');
insert into duty (duty_seq, duty_name) values (10, '구매/자재/물류');
insert into duty (duty_seq, duty_name) values (11, '상품기획/MD');
insert into duty (duty_seq, duty_name) values (12, '운전/운송/배송');
insert into duty (duty_seq, duty_name) values (13, '서비스');
insert into duty (duty_seq, duty_name) values (14, '생산');
insert into duty (duty_seq, duty_name) values (15, '건설/건축');
insert into duty (duty_seq, duty_name) values (16, '의료');
insert into duty (duty_seq, duty_name) values (17, '연구/R&D');
insert into duty (duty_seq, duty_name) values (18, '교육');
insert into duty (duty_seq, duty_name) values (19, '미디어/문화/스포츠');
insert into duty (duty_seq, duty_name) values (20, '금융/보험');
insert into duty (duty_seq, duty_name) values (21, '공공/복지');

select * from carrer;

insert into carrer values (1, 1, 'hi1', 1, '2022-02-02', default);
insert into carrer values (2, 1, 'hi2', 2, '2022-02-03', default);
insert into carrer values (3, 2, 'hi3', 3, '2022-02-04', default);
insert into carrer values (4, 2, 'hi4', 4, '2022-02-05', default);
insert into carrer values (5, 3, 'hi5', 5, '2022-02-06', default);
insert into carrer values (6, 1, 'hi6', 6, '2022-02-06', default);

insert into carrer values (7, 3, 'hi1', 1, '2020-02-02', default);

update carrer set carrer_startdate='2017-01-01' where m_id = 'hi1';
update carrer set carrer_startdate='2018-01-01' where m_id = 'hi2';
update carrer set carrer_startdate='2019-01-01' where m_id = 'hi3';
update carrer set carrer_startdate='2020-01-01' where m_id = 'hi4';
update carrer set carrer_startdate='2021-01-01' where m_id = 'hi5';
update carrer set carrer_startdate='2022-01-01' where m_id = 'hi6';

update carrer set carrer_enddate='2019-01-01' where m_id = 'hi1';

select * from creview;

insert into creview values (1, default, 5, 'asdf', 'asdf', 'hi1', 'samsung', 1);
insert into creview values (2, default, 4, 'zxcv', 'zxcv', 'hi2', 'samsung', 2);
insert into creview values (3, default, 3, 'asdf', 'asdf', 'hi3', 'naver', 3);
insert into creview values (4, default, 2, 'qwer', 'qwer', 'hi4', 'naver', 4);
insert into creview values (5, default, 1, 'asdf', 'asdf', 'hi5', 'kakao', 5);
insert into creview values (6, default, 5, 'qwer', 'qwer', 'hi6', 'samsung', 6);

select * from ireview;

insert into ireview values (1, default, 'samsung asdf', 'asdf', 'hi1', 'samsung', 1);
insert into ireview values (2, default, 'samsung zxcv', 'zxv', 'hi2', 'samsung', 2);
insert into ireview values (3, default, 'naver asdf', 'asdf', 'hi3', 'naver', 3);
insert into ireview values (4, default, 'naver qwer', 'qwer', 'hi4', 'naver', 4);
insert into ireview values (5, default, 'kakao asdf', 'asdf', 'hi5', 'kakao', 5);
insert into ireview values (6, default, 'samsung qwer', 'qwer', 'hi6', 'samsung', 6);

create sequence seqclass;

select * from class;

insert into class (class_seq, class_name, class_content, class_date, class_count, class_test, class_pic) values (seqClass.nextVal,'엑셀', '[엑셀]출근해서 바로써먹는 생존형 엑셀 클래스', sysdate,default, '1더하기 1은?','default.png');
insert into class (class_seq, class_name, class_content, class_date, class_count, class_test, class_pic) values (seqClass.nextVal,'기초 포토샵', '연봉2배! 조회수2배! 실전 포토샵 클래스', sysdate, default, '2더하기 2는?','default.png');
insert into class (class_seq, class_name, class_content, class_date, class_count, class_test, class_pic) values (seqClass.nextVal,'아이패드 드로잉', '스케치와 컬러, GIF로 나만의 감각을 그려보자', sysdate, default, '3더하기 3은?','default.png');
insert into class values (seqClass.nextVal,'파워포인트', '하루 10분으로 끝내는 파워포인트 디자인 실무', sysdate, default, '4더하기 4는?','default.png');
insert into class values (seqClass.nextVal,'C언어', '코린이들 드루와! 실습으로 배우는 기초 C언어', sysdate, default, '5더하기 5는?','default.png');
insert into class values (seqClass.nextVal,'C언어', '코린이들 드루와! 실습으로 배우는 기초 C언어', sysdate, default, '5더하기 5는?','default.png');

update class set class_count=5 where class_seq = 1;
update class set class_count=4 where class_seq = 2;
update class set class_count=3 where class_seq = 3;
update class set class_count=2 where class_seq = 4;
update class set class_count=1 where class_seq = 5;

update class set class_date='2022-05-01' where class_seq = 1;
update class set class_date='2022-06-01' where class_seq = 2;
update class set class_date='2022-07-01' where class_seq = 3;
update class set class_date='2022-08-01' where class_seq = 4;
update class set class_date='2022-09-01' where class_seq = 5;

update class set class_count=2 where class_seq = 1;

commit;

select * from employment;

create sequence seqEmployment;

insert into employment values (seqEmployment.nextVal, sysdate, 3000, 'samsung', '2023-10-10', 'y', 1, '영어 키즈카페 매니저 채용', '고객상담 및 등록, 스케쥴 관리, 직원관리 (체험강사 근태관리, 스케쥴 조정), 매장관리 (매장정리 및 청결관리), 체험수업 진행 (아이들과 동화책 읽고 다양한 독후 활동 진행)');
insert into employment values (seqEmployment.nextVal, sysdate, 2000, 'naver', '2023-9-10', 'n', 2, 'A/S팀(제주지사) 신입/경력 모집', '접수기간 : 2023년 01월 04일 ~ 02월 02일 24시 마감, 접수방법 : 사람인 온라인 입사지원, 이력서양식 : 사람인 온라인 이력서');
insert into employment values (seqEmployment.nextVal, sysdate, 4000, 'kakao', '2023-8-10', 'y', 3, 'DBA 경력직 채용', 'DATA Migration, 쿼리 튜닝, 성능 관리, 메타데이터 관리 및 표준화, 데이터 유효성 / 무결성 유지 대책 수립, 새로운 요구사항에 대한 DML 테이블 생성/변경/삭제 관리');

update employment set emp_date='2022-09-01' where emp_seq = 1;
update employment set emp_date='2022-10-01' where emp_seq = 2;
update employment set emp_date='2022-11-01' where emp_seq = 3;

select * from tag;

insert into tag (tag_seq, tag_name) values (1, 'java');
insert into tag (tag_seq, tag_name) values (2, 'html');
insert into tag (tag_seq, tag_name) values (3, 'ajax');
insert into tag (tag_seq, tag_name) values (4, 'css');
insert into tag (tag_seq, tag_name) values (5, 'react');
insert into tag (tag_seq, tag_name) values (6, 'python');
insert into tag (tag_seq, tag_name) values (7, 'javascript');
insert into tag (tag_seq, tag_name) values (8, 'node.js');
insert into tag (tag_seq, tag_name) values (9, '엑셀');
insert into tag (tag_seq, tag_name) values (10, '웹 Publisher');

select * from cclassscrap;

insert into cclassscrap values (1, 'samsung', 1);
insert into cclassscrap values (2, 'samsung', 2);
insert into cclassscrap values (3, 'kakao', 1);

select * from memberclass;

insert into memberclass values (1, 'hi1', 1, 5);
insert into memberclass values (2, 'hi2', 1, 5);
insert into memberclass values (3, 'hi3', 1, 4);
insert into memberclass values (4, 'hi4', 2, 5);
insert into memberclass values (5, 'hi5', 2, 5);
insert into memberclass values (6, 'hi6', 3, 5);

select * from resume;

insert into resume (resume_seq, resume_intro, resume_school, resume_skill, m_id) values (1, '안녕하세요 구해유입니다.', '4년제 대졸', 'JAVA', 'hi1');
insert into resume (resume_seq, resume_intro, resume_school, resume_skill, m_id) values (2, '구해유입니다.', '4년제 대졸', 'JAVA', 'hi2');
insert into resume (resume_seq, resume_intro, resume_school, resume_skill, m_id) values (3, '안녕하세요', '4년제 대졸', 'JAVA', 'hi3');
insert into resume (resume_seq, resume_intro, resume_school, resume_skill, m_id) values (4, '안녕하세요 구해유입니다.', '4년제 대졸', 'JAVA', 'hi4');
insert into resume (resume_seq, resume_intro, resume_school, resume_skill, m_id) values (5, '구해유입니다.', '4년제 대졸', 'JAVA', 'hi5');
insert into resume (resume_seq, resume_intro, resume_school, resume_skill, m_id) values (6, '안녕하세요', '4년제 대졸', 'JAVA', 'hi6');

select * from empmember;

insert into empmember values (1, 'hi1', 1, default, default, 1);
insert into empmember values (2, 'hi2', 1, default, default, 1);
insert into empmember values (3, 'hi3', 2, default, default, 1);
insert into empmember values (4, 'hi4', 2, default, default, 1);
insert into empmember values (5, 'hi5', 3, default, default, 1);
insert into empmember values (6, 'hi6', 3, default, default, 1);

create sequence seqscrap;

select * from scrap;
delete from scrap;

select * from membertag;

insert into membertag values (1, 'hi1', 1);
insert into membertag values (2, 'hi2', 2);
insert into membertag values (3, 'hi3', 3);
insert into membertag values (4, 'hi4', 4);
insert into membertag values (5, 'hi5', 5);
insert into membertag values (6, 'hi6', 6);

select * from classtag;

insert into classtag values (1, 1, 1);
insert into classtag values (2, 2, 2);
insert into classtag values (3, 3, 3);
insert into classtag values (4, 4, 4);
insert into classtag values (5, 5, 5);
insert into classtag values (6, 1, 21);


--기업리뷰 > 기업명 검색
create or replace view vwStar
as
select
    c_id as c_id, 
    avg(creview_star) as staravg
from creview
    group by c_id;

select
    c.cdata_seq, cm.c_id, c.cdata_name, r.reg_name, cm.c_tel, cm.c_email, cm.c_pic, cm.c_intro, cm.c_activeox, vs.staravg
from COMPANY c
    left outer join cmember cm on c.cdata_seq = cm.cdata_seq
        left outer join region r on r.reg_seq = cm.reg_seq
            left outer join vwStar vs on cm.c_id = vs.c_id
                where c.cdata_name='삼성';

--기업리뷰 > 상세 페이지   
select
    c.cdata_seq, cm.c_id, c.cdata_name, cm.c_tel, cm.c_email, cm.c_pic, cm.c_intro, cm.c_activeox, r.reg_name
from COMPANY c
    left outer join cmember cm on c.cdata_seq = cm.cdata_seq
        left outer join region r on r.reg_seq = cm.reg_seq
            where c.cdata_seq= 1;
    
--기업리뷰 > 기업리뷰
create or replace view vwCarrer
as
select
    m_id,
    case when carrer_enddate is null then trunc((sysdate - carrer_startdate) / 365)
        else trunc((carrer_enddate - carrer_startdate) / 365)
    end as countyear
from carrer;

create or replace view vwCarrerCount
as
select
    m_id as m_id,
    sum(countyear) as years
from vwCarrer
    group by m_id; 

select
    c.cdata_seq, c.cdata_name, cr.*, vcc.years, m.m_name
from COMPANY c
    left outer join cmember cm on c.cdata_seq = cm.cdata_seq
        left outer join creview cr on cm.c_id = cr.c_id
            left outer join vwCarrerCount vcc on cr.m_id= vcc.m_id
                left outer join member m on m.m_id = cr.m_id
                    where c.cdata_seq=1;

--기업리뷰 > 면접리뷰         
select
    c.cdata_seq, c.cdata_name, ir.*, d.duty_name, m.m_name
from COMPANY c
    left outer join cmember cm on c.cdata_seq = cm.cdata_seq
        left outer join ireview ir on cm.c_id = ir.c_id
            left outer join duty d on d.duty_seq = ir.duty_seq
                left outer join member m on m.m_id = ir.m_id
                    where c.cdata_seq=1 and d.duty_seq=1;
                    
--클래스 > 조회순
create or replace view vwClassCount
as
select * from class
    order by class_count desc;
    
select * from vwClassCount
    where rownum <= 3;
                            
--클래스 > 최신순
create or replace view vwClassNew
as
select * from class
    order by class_date desc;
    
select * from vwClassNew
    where rownum <= 3;
    
--채용공고 > 상세
select
    d.duty_name
from employment e
    left outer join duty d on d.duty_seq = e.duty_seq
        where e.emp_seq=1;
        
select
    r.reg_name
from region r
    left outer join cmember cm on r.reg_seq = cm.reg_seq
        left outer join employment e on cm.c_id = e.c_id
            where e.emp_seq = 1;

--채용공고 > 검색
select 
    e.*
from employment e
    left outer join cmember cm on cm.c_id = e.c_id
        where e.emp_title like '%%' || '영' || '%%'
            and e.emp_pay between 2500 and 3000
                and e.duty_seq = 1
                    and cm.reg_seq = 1;
                    
--기업회원 > 채용공고
select 
    e.*, vwem.countemp
from employment e
    left outer join cmember cm on cm.c_id = e.c_id
        left outer join vwEmpMemberCounter vwem on e.emp_seq = vwem.emp_seq
        where cm.c_id = 'samsung' and emp_deadline < sysdate
            order by emp_date desc;
            
--기업회원 > 인재추천
create or replace view vwMemberRecommend
as
select
    m.m_name as m_name, 
    m.m_tel as m_tel, 
    m.m_email as m_email, 
    c.class_seq as class_seq,
    c.class_name as class_name, 
    mc.m_class_score as m_class_score
from member m
    left outer join memberclass mc on m.m_id = mc.m_id
        left outer join class c on c.class_seq = mc.class_seq;
        
select
    c.c_id, ccs.class_seq, vwm.*
from cmember c
    left outer join cclassscrap ccs on c.c_id = ccs.c_id
        inner join vwMemberRecommend vwm on ccs.class_seq = vwm.class_seq
            where c.c_id = 'samsung' and vwm.m_class_score > 4 and rownum < 6;
            
--기업회원 > 채용공고 > 지원자
create or replace view vwEmpMemberCount
as
select
    m.m_id as m_id,
    m.m_name as m_name,
    r.resume_seq as resume_seq,
    em.emp_seq as emp_seq,
    e.c_id as c_id
from member m
    left outer join resume r on m.m_id = r.m_id
        inner join empmember em on r.m_id = em.m_id
            inner join employment e on e.emp_seq = em.emp_seq;

create or replace view vwEmpMemberCounter
as
select
    emp_seq as emp_seq,
    c_id as c_id,
    count(*) as countemp
from vwEmpMemberCount
    group by emp_seq, c_id;
                
commit;

--클래스 > 일반회원 추천
select 
    m.m_id, mt.tag_seq, c.*
from member m
    left outer join membertag mt on m.m_id = mt.m_id
        left outer join tag t on t.tag_seq = mt.tag_seq
            left outer join classtag ct on t.tag_seq = ct.tag_seq
                left outer join class c on c.class_seq = ct.class_seq;
                
select
    c.*, ct.tag_seq, mt.m_id
from class c
    left outer join classtag ct on c.class_seq = ct.class_seq
        left outer join membertag mt on ct.tag_seq = mt.tag_seq
            where mt.m_id = 'hi1' and rownum < 4;
            
            
            
            
            select * from employment;
        
        update cmember set c_pic= 'apple.png' where c_id='com3';
        
        commit;
        
        update employment set emp_title='삼성웰스토리(주) 세일CC 홀서비스 직원 모집.(신입/경력, 기숙사 제공(APT 1인 1실)', emp_txt= '경력 무관, 학력 무관 우대: 운전가능자'  where emp_seq= 101;
        update employment set emp_title='삼성웰스토리(주) 세일CC 홀서비스 직원 모집.(신입/경력, 기숙사 제공(APT 1인 1실)', emp_txt= '경력 무관, 학력 무관 우대: 운전가능자'  where emp_seq= 102;
        update employment set emp_title='삼성출판사 마이리틀타이거 현대아울렛 남양주점 매니저 (주 44시간/주5.5일/하루9시간)', emp_txt= '신입,경력 학력무관 우대: 유관업무 경력자'  where emp_seq= 103;
        update employment set emp_title='MS Power Platform 컨설턴트', emp_txt= '경력 3-20년, 학력무관, 정규직'  where emp_seq= 104;
        update employment set emp_title='삼성네오정보(주)영남지사(울산/부산) 복합기(사무기기) 엔지니어 모집(9시-18시)', emp_txt= '경력무관, 학력무관 우대: 운전가능자, 자동차운전면허'  where emp_seq= 105;
        update employment set emp_title='[메가스터디교육] 메가공무원 개발자(Classic ASP, MS-SQL) 채용', emp_txt= '경력 2-10년, 학력무관, 정규직'  where emp_seq= 106;
        
        
        
        
        
        