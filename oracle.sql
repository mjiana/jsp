-- �Խ��ǿ� ���̺� ����(2021.05.20)
create table board2 (
	idx int primary key,
	name varchar(10),
	email varchar(50),
	homepage varchar(50),
	title varchar(50),
	content varchar(2000),
	pwd varchar(10),
	wdate date,
	hit int 
); 
-- �����Ҷ� drop table board2;

-- sequence : �ڵ�������ȣ�� �����ϴ� ��ü
create sequence board2_idx_seq increment by 1 start with 1;
-- �����Ҷ� drop sequence board2_idx_seq;
--------------------------------------------------------------------
-- select
select * from board2;
-- desc board2; ��Ŭ���������� �ȵǴµ� cli �α��� ���¿����� ����
-- ���̺� ��� ����ϱ�
select * from tab;
-- ������ ��� ����ϱ�
select * from seq;
