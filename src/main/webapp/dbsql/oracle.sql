drop table plus_file cascade constraints;
CREATE TABLE plus_file (
  id VARCHAR2(50) NOT NULL,
  name VARCHAR2(500) ,
  plustype VARCHAR2(50) ,
  plussize VARCHAR2(20) ,
  url VARCHAR2(300) ,
  pid VARCHAR2(50) ,
  createdate DATE,
  updatedate DATE,
  folder NUMBER(18),
  num NUMBER(18),
  constraint PK_plus_file PRIMARY KEY (id)
);

drop table t_country cascade constraints;
CREATE TABLE t_country (
  id VARCHAR2(20)  NOT NULL,
  name VARCHAR2(100) ,
  constraint PK_t_country PRIMARY KEY (id)
);

INSERT INTO t_country (id, name) VALUES('usa','美国');
INSERT INTO t_country (id, name) VALUES('cn','中国');
INSERT INTO t_country (id, name) VALUES('jp','日本');
INSERT INTO t_country (id, name) VALUES('en','英国');
INSERT INTO t_country (id, name) VALUES('de','德国');
INSERT INTO t_country (id, name) VALUES('fr','法国');
INSERT INTO t_country (id, name) VALUES('ca','加拿大');
INSERT INTO t_country (id, name) VALUES('at','奥地利');
INSERT INTO t_country (id, name) VALUES('ch','瑞士');

drop table t_form cascade constraints;
CREATE TABLE t_form (
  id VARCHAR2(20)  NOT NULL,
  username VARCHAR2(100) ,
  pwd VARCHAR2(100) ,
  constraint PK_t_form  PRIMARY KEY (id)
);

INSERT INTO t_form (id, username, pwd) VALUES
  ('1','zhangsan','zhangsan');

drop table t_department cascade constraints;
CREATE TABLE t_department (
  id VARCHAR2(20)  NOT NULL,
  name VARCHAR2(50) ,
  manager VARCHAR2(300) ,
  manager_name VARCHAR2(200) ,
  constraint PK_t_department PRIMARY KEY (id)
);

drop table t_educational cascade constraints;
CREATE TABLE t_educational (
  id VARCHAR2(20) ,
  name VARCHAR2(20) ,
  constraint PK_t_educational PRIMARY KEY (id)
);

drop table t_employee cascade constraints;
CREATE TABLE t_employee (
  id VARCHAR2(50)  NOT NULL,
  loginname VARCHAR2(50)  ,
  name VARCHAR2(50) ,
  age NUMBER(18),
  birthday DATE,
  dept_id VARCHAR2(50) ,
  position VARCHAR2(50) ,
  gender NUMBER(18),
  married NUMBER(18),
  salary VARCHAR2(20) ,
  educational VARCHAR2(20) ,
  country VARCHAR2(20) ,
  city VARCHAR2(20) ,
  remarks VARCHAR2(2000) ,
  school VARCHAR2(20) ,
  createtime DATE,
  email VARCHAR2(100) ,
  constraint PK_t_employee PRIMARY KEY (id)
);

drop table t_position cascade constraints;
CREATE TABLE t_position (
  id VARCHAR2(50) ,
  name VARCHAR2(50) ,
  dept_id VARCHAR2(50) ,
 constraint PK_t_position PRIMARY KEY (id)
);

INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('1','Files',NULL,'0',NULL,'-1',NULL,NULL,1);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('2','Documents',NULL,NULL,NULL,'1',NULL,NULL,1);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('3','Images',NULL,NULL,NULL,'1',NULL,NULL,1);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('4','Music',NULL,NULL,NULL,'1',NULL,NULL,1);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('5','System',NULL,NULL,NULL,'1',NULL,NULL,1);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('6','Video',NULL,NULL,NULL,'1',NULL,NULL,1);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('7','Projects',NULL,NULL,NULL,'2',NULL,NULL,1);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('8','Reports',NULL,NULL,NULL,'2',NULL,NULL,1);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('9','Employees',NULL,NULL,NULL,'3',NULL,NULL,1);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('10','Product icons',NULL,NULL,NULL,'3',NULL,NULL,1);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('11','Description.rtf','rtf',NULL,NULL,'1',NULL,NULL,0);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('12','n.txt','txt',NULL,NULL,'1',NULL,NULL,0);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('13','o.txt','txt',NULL,NULL,'1',NULL,NULL,0);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('14','file1.txt','txt',NULL,NULL,'2',NULL,NULL,0);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('15','file2.txt','txt',NULL,NULL,'2',NULL,NULL,0);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('16','file3.txt','txt',NULL,NULL,'3',NULL,NULL,0);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('17','file4.txt','txt',NULL,NULL,'3',NULL,NULL,0);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('18','file5.txt','txt',NULL,NULL,'4',NULL,NULL,0);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('19','file6.txt','txt',NULL,NULL,'5',NULL,NULL,0);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('20','file7.txt','txt',NULL,NULL,'6',NULL,NULL,0);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('21','file8','txt',NULL,NULL,'7',NULL,NULL,0);
INSERT INTO plus_file (id, name, plustype, plussize, url, pid, createdate, updatedate, folder) VALUES('22','file9','txt',NULL,NULL,'8',NULL,NULL,0);


INSERT INTO t_department (id, name, manager, manager_name) VALUES('sc','市场销售部','b3d3d2b2-460a-470e-a33c-aff1c8d8a652','宋蔚伟');
INSERT INTO t_department (id, name, manager, manager_name) VALUES('rs','人事部','70b7f3d2-b5d3-413f-b3ae-d56e07fbe5fe','张伟');
INSERT INTO t_department (id, name, manager, manager_name) VALUES('js','技术部','20ac24f7-a34c-4f12-89f0-91d65b2ddfa9','徐承承');
INSERT INTO t_department (id, name, manager, manager_name) VALUES('cw','财务部','8197fb45-2b60-4309-820c-e70824fc9b33','张明');


INSERT INTO t_educational (id, name) VALUES('1','大专');
INSERT INTO t_educational (id, name) VALUES('2','本科');
INSERT INTO t_educational (id, name) VALUES('3','研究生');
INSERT INTO t_educational (id, name) VALUES('4','博士');

INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('8197fb45-2b60-4309-820c-e70824fc9b33','zm@163.com','张明',27,to_date('1983-01-13 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'cw','cw2',1,0,'3839','2','','','爱好足球','贵州财经大学',to_date('2012-01-31 10:50:12', 'yyyy-MM-dd HH24:mi:ss'),'zm@163.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('b3d3d2b2-460a-470e-a33c-aff1c8d8a652','sww@163.com','宋蔚伟',25,to_date('1987-01-21 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'sc','sc3',1,0,'3681','2','','','爱好篮球','天津科技大学',to_date('2012-01-31 10:53:35', 'yyyy-MM-dd HH24:mi:ss'),'sww@163.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('410c0185-3c9c-44ec-b9fb-f5a856013157','cyj@163.com','陈英杰',25,to_date('1987-01-21 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'sc','sc3',1,0,'3681','2','','','','南京审计学院',to_date('2012-01-31 10:53:55', 'yyyy-MM-dd HH24:mi:ss'),'cyj@qq.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('70b7f3d2-b5d3-413f-b3ae-d56e07fbe5fe','zw@hotmail.com','张伟',31,to_date('1981-01-14 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'rs','rs2',1,1,'4760','2','','','','南京工业大学',to_date('2012-01-31 11:04:18', 'yyyy-MM-dd HH24:mi:ss'),'zw@hotmail.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('ceb1ab63-c0c6-40fb-a481-65ed70b9e2a2','huang8373268@qq.com','黄磊',37,NULL,'sc','sc2',2,1,'7398','2','','','','金陵科技学院',to_date('2012-01-31 11:10:36', 'yyyy-MM-dd HH24:mi:ss'),'huang8373268@qq.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('20ac24f7-a34c-4f12-89f0-91d65b2ddfa9','xucc198712@qq.com','徐承承',27,to_date('1985-07-17 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'js','js2',2,0,'4373','2','','','','南京邮电学院',to_date('2012-01-31 13:28:51', 'yyyy-MM-dd HH24:mi:ss'),'xucc198712@qq.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('d6fb5410-adde-46a9-9d2b-dee99c64a83d','xzz@163.com','谢忠哲',25,to_date('1987-10-07 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'js','js3',2,0,'3860','2','','','','宁波工程大学',to_date('2012-01-31 13:28:34', 'yyyy-MM-dd HH24:mi:ss'),'xzz@163.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('ac3c3166-e677-45a5-9d1b-da4f09d6fc2a','zhoulan2010@hotmail.com','周兰',34,to_date('1978-12-15 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'rs','rs1',2,1,'6580','3','','','','南京理工大学',to_date('2012-01-31 13:28:33', 'yyyy-MM-dd HH24:mi:ss'),'zhoulan2010@hotmail.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('61a6943f-990e-4169-b6a0-bed9bdc42a5f','xiaoqian18392342@qq.com','陈晓倩',24,to_date('1988-11-18 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'sc','sc3',2,0,'3000','2','','','','南京信息工程大学',to_date('2012-01-31 13:28:31', 'yyyy-MM-dd HH24:mi:ss'),'xiaoqian18392342@qq.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('54b12a07-1f7d-4616-b3e9-9dcc465a5f33','13625147852@163.com','张鹏楠',25,to_date('1987-06-12 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'js','js3',1,0,'3230','2','','','','南京邮电学院',to_date('2012-01-31 14:04:24', 'yyyy-MM-dd HH24:mi:ss'),NULL);
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('b0171c0f-5064-4975-9f54-ebf28666aca6','jan3844@gmail.com','沈臻妍',25,to_date('1987-03-17 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'rs','rs2',2,0,'3400','2','','','','浙江理工大学',to_date('2012-01-31 13:28:31', 'yyyy-MM-dd HH24:mi:ss'),'jan3844@gmail.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('9252b4a2-8000-4b3e-b29a-ac7849163ca2','djf19830326@qq.com','杜鉴锋',28,to_date('1984-11-08 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'js','js2',1,1,'5300','2','','','','南京理工大学',to_date('2012-01-31 13:28:29', 'yyyy-MM-dd HH24:mi:ss'),'djf19830326@qq.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('8cb7e27c-ebab-48b5-bf83-67f8294e8797','shcheng@163.com','施华成',30,to_date('1982-05-04 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'sc','sc2',2,1,'5600','2','','','','南京晓庄学院',to_date('2012-01-31 13:28:28', 'yyyy-MM-dd HH24:mi:ss'),'shcheng@163.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('7ef2fc41-27b2-4991-9134-189f95d76c42','hk2006@qq.com','黄凯',24,to_date('1988-01-28 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'sc','sc3',1,0,'2900','2','','','','湖南科技大学',to_date('2012-01-31 13:28:27', 'yyyy-MM-dd HH24:mi:ss'),'hk2006@qq.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('a817ca24-ede0-4932-8455-b1e86eb7772d','wl19861219@163.com','王岚',25,to_date('1987-08-19 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'sc','sc3',2,0,'3000','2','','','','南京审计学院',to_date('2012-01-31 13:28:26', 'yyyy-MM-dd HH24:mi:ss'),'wl19861219@163.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('b4366fb3-fb9c-4244-b3b6-c56de0c70cde','tangyue@gmail.com','唐岳',35,to_date('1977-06-21 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'sc','sc1',1,1,'6300','2','','','','金陵科技大学',to_date('2012-01-31 13:28:26', 'yyyy-MM-dd HH24:mi:ss'),'tangyue@gmail.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('7cc225c6-2673-4993-ab02-288e15fc351b','wss2005@qq.com','王珊珊',27,to_date('1985-03-12 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'js','js4',2,1,'3700','2','','','','南京审计学院',to_date('2012-01-31 11:10:47', 'yyyy-MM-dd HH24:mi:ss'),'wss2005@qq.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('a46d28db-c484-4e58-9076-166cb957a152','19880141x@qq.com','薛乃馨',25,to_date('1987-01-20 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'cw','cw3',2,0,'3100','2','','','','合肥学院',to_date('2012-01-31 11:10:47', 'yyyy-MM-dd HH24:mi:ss'),'19880141x@qq.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('beb61bb1-9c6c-4c93-8d82-ab784cc00b27','wwy@yahoo.com','吴蔚一',28,to_date('1984-06-12 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'js','js4',1,1,'4320','2','','','','铜陵学院',to_date('2012-01-31 11:10:47', 'yyyy-MM-dd HH24:mi:ss'),'wwy@yahoo.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('c95c8c42-9fa9-4188-9a6e-0cb676d824e5','jinyi1987@qq.com','金怡',26,to_date('1986-04-14 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'js','js2',2,0,'3987','2','','','','江苏大学',to_date('2012-01-31 11:10:41', 'yyyy-MM-dd HH24:mi:ss'),'jinyi1987@qq.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES ('6f1da849-7fea-4fe1-ba33-71f7d4a6412d','ywq2000@163.com','袁维琦',27,to_date('1985-01-09 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'js','js3',1,1,'4632','2','','','','三江学院',to_date('2012-01-31 11:10:40', 'yyyy-MM-dd HH24:mi:ss'),'ywq2000@163.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('626c9bd1-c99b-4969-9af8-58d216c2a49b','hongweishi@hotmail.com','施宏伟',37,to_date('1975-10-16 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'js','js1',1,1,'6350','2','','','','江苏科技大学',to_date('2012-01-31 11:10:39', 'yyyy-MM-dd HH24:mi:ss'),'hongweishi@hotmail.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('17ac00b0-ea98-4865-b006-38a462ad201a','wj1983417@qq.com','王军',28,to_date('1984-01-10 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'js','js2',1,1,'4850','2','','','','扬州大学',to_date('2012-01-31 11:10:38', 'yyyy-MM-dd HH24:mi:ss'),'wj1983417@qq.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('d4d7b386-5030-4ef8-882f-0aa869217121','chenjie1866@qq.com','陈杰',24,to_date('1988-10-12 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'cw','cw3',1,0,'3000','2','','','','徐州工程大学',to_date('2012-01-31 11:10:38', 'yyyy-MM-dd HH24:mi:ss'),'chenjie1866@qq.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('27eb622c-6b1b-431e-9cf5-c82a71fea2d5','wkliang123@163.com','王克良',29,to_date('1983-01-13 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'sc','sc2',1,1,'5300','2','','','','常熟理工大学',to_date('2012-01-31 11:10:37', 'yyyy-MM-dd HH24:mi:ss'),'wkliang123@163.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('77b8dd59-30a5-49cd-aaa2-095926770438','qinli3849087@qq.com','秦立',25,to_date('1987-10-30 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'sc','sc3',2,1,'3000','2','','','','盐城师范学院',to_date('2012-01-31 11:10:37', 'yyyy-MM-dd HH24:mi:ss'),'qinli3849087@qq.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('c7643283-f8f8-4329-9f06-276168ffc192','zhangliang@163.com','张亮',25,to_date('1987-05-21 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'sc','sc3',2,0,'3500','2','','','','宿州学院',to_date('2012-01-31 11:10:36', 'yyyy-MM-dd HH24:mi:ss'),'zhangliang@163.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('10a9f701-e0e0-4506-8937-e7c0ae8c4ae6','glq@qq.com','顾乐琴',24,to_date('1988-01-13 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'js','js5',2,0,'2000','2','','','','上海交通大学',to_date('2012-01-31 11:10:33', 'yyyy-MM-dd HH24:mi:ss'),'glq@qq.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('5b68ce26-90d5-4df5-9fe3-cdbd2a325f23','gyj@qq.com','高英杰',26,to_date('1986-10-15 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'cw','cw3',1,0,'3232','2','','','','上海外贸大学',to_date('2012-01-31 11:04:51', 'yyyy-MM-dd HH24:mi:ss'),'gyj@qq.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES ('7804c632-5959-4c8e-b7e7-633926efa8d9','zhou123@163.com','周捷',26,to_date('1986-01-14 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'js','js3',1,0,'4600','2','','','','安徽农业大学',to_date('2012-01-31 11:04:46', 'yyyy-MM-dd HH24:mi:ss'),'zhou123@163.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('14e8841e-9b41-485c-9cd4-de77f8ba4cfa','zhuming@163.com','朱敏',24,to_date('1988-01-13 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'js','js5',1,0,'2000','2','','','','汕头大学',to_date('2012-01-31 11:04:41', 'yyyy-MM-dd HH24:mi:ss'),'zhumin@163.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('ad62a74d-82b0-4ece-9d01-59965d60f86e','miaochun@qq.com','苗春',30,to_date('1982-06-16 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'rs','rs1',2,1,'6000','2','','','','苏州大学',to_date('2012-01-31 11:04:35', 'yyyy-MM-dd HH24:mi:ss'),'miaochun@qq.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('12dfbe12-8a80-4bd6-9d88-f36b505408f8','wjm@qq.com','王佳美',27,to_date('1985-07-25 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'sc','sc3',2,1,'3681','2','','','','河北科技大学',to_date('2012-01-31 10:53:40', 'yyyy-MM-dd HH24:mi:ss'),'wjm@qq.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('0ffa83ef-c0d2-4c9b-9c31-aa46b657c700','lili@163.com','李丽',25,to_date('1987-06-25 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'js','js3',2,0,'3681','2','','','','上海工商学院',to_date('2012-01-31 10:53:52', 'yyyy-MM-dd HH24:mi:ss'),'lili@163.com');
INSERT INTO t_employee (id, loginname, name, age, birthday, dept_id, position, gender, married, salary, educational, country, city, remarks, school, createtime, email) VALUES('92c2a9fb-5da1-4de5-a516-0c4c96d82ffd','wq@163.com','王强',25,to_date('1987-12-11 00:00:00', 'yyyy-MM-dd HH24:mi:ss'),'js','js2',1,0,'3201','2','','','','天津商业大学',to_date('2012-01-31 10:53:39', 'yyyy-MM-dd HH24:mi:ss'),'wq@163.com');


INSERT INTO t_position (id, name, dept_id) VALUES('cw1','财务总监','cw');
INSERT INTO t_position (id, name, dept_id) VALUES('cw2','会计','cw');
INSERT INTO t_position (id, name, dept_id) VALUES('cw3','出纳','cw');
INSERT INTO t_position (id, name, dept_id) VALUES('sc1','市场总监','sc');
INSERT INTO t_position (id, name, dept_id) VALUES('sc2','销售经理','sc');
INSERT INTO t_position (id, name, dept_id) VALUES('sc3','销售员','sc');
INSERT INTO t_position (id, name, dept_id) VALUES('js1','技术总监','js');
INSERT INTO t_position (id, name, dept_id) VALUES('js2','后台工程师','js');
INSERT INTO t_position (id, name, dept_id) VALUES('js3','前端工程师','js');
INSERT INTO t_position (id, name, dept_id) VALUES('js4','美工','js');
INSERT INTO t_position (id, name, dept_id) VALUES('js5','实习生','js');
INSERT INTO t_position (id, name, dept_id) VALUES('rs1','人事部经理','rs');
INSERT INTO t_position (id, name, dept_id) VALUES('rs2','人事助理','rs');