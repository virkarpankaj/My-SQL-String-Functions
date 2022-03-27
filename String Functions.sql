# ASCII
select ascii('Pankaj') as ascii_no;

# char-length
select char_length('Data Science') as result;

#concat
select concat('Pankaj',' ','virkar') as result;
select concat('Mataji',' ', 5029) as rslt;

# format
select format(32456.4571, 2) as rslt;

#insert -- INSERT(LastName,position_of_1st_name,remove_no_of_chara_in_last, FirstName)
select insert ('google.com',1,0,'www.');
select insert ('google.com',2,0,'www.');
select insert ('google.com',2,1,'www.');

# INSTR - finds the position
select instr('I am an Indian','Indian');
select instr('I am an Indian','Pankaj');  # 0
select instr('I am an Indian','Iam');     # 0
select instr('I am an Indian','I am');    # 1

# Locate - finds the position
select locate('Indian','I am an Indian');
select locate('Pankaj','I am an Indian');  # 0
select locate('Iam','I am an Indian');     # 0
select locate('I am','I am an Indian');    # 1

# Position- finds the position
select position('Indian' in 'I am an Indian');
select position('Pankaj' in 'I am an Indian');  # 0
select position('Iam' in 'I am an Indian');     # 0
select position('I am' in 'I am an Indian');    # 1

# Lower
select lower('WELCOME TO THE CLASS FLOKS !!');  # as result 

# Upper
SELECT UPPER('welcome to the class floks !!');

# Left & Right
# selct no of charachters from left or right
select left('www.google.com', 3);
select right('You are doing great job Pankaj',6);

# LPAD, RPAD - padds given str on left or right
select LPAD('Narendra',10,'Mr') as col_name;
select LPAD('Narendra',12,'Mr') as col_name;
select LPAD('Narendra',12,'Mr. ') as col_name;
select RPAD('Narendra',13,' Modi') as col_name;

# LTRIM, RTRIM, TRIM  - removes white space
SELECT ltrim('      oye')  as col_name;
SELECT rtrim('      oye           ')  as col_name;
SELECT trim('      oye            ')  as col_name;
SELECT trim('      oy  e            ')  as col_name;  -- only end

# substring SUBSTRING(str, pos) / SUBSTRING(str, pos, len)
select substring('I am learning My SQL ',5) as col_name;          # ANS : learning My SQL - white s - starts from 5th
select substring('I am learning My SQL ',14) as col_name;
select substring('I am learning My SQL',-6) as col_name;
select substring('I am learning My SQL',-6,6) as col_name;  -- start @-6 length = 6, not till end
select substring('I am learning My SQL',6,8) as col_name;   -- start @6 length = 8, not till end

# replace(main string, old string,new string)
select replace ('United Kingdom','kingdom','states') as col;
select replace ('United states of America','United states of America','USA')AS COL;

# REVERSE
SELECT reverse('Hello !!') as col;
SELECT reverse('1234567') as col;

# Substring_Index
# when positive no -- it is count of delimeter and from that delimeter all the char of delimeters left
# when negative no -- it is count of delimeter and from that delimeter all the char of delimeters right
select substring_index('www.google.com','.',1) as col;   # www
select substring_index('www.google.com','.',2) as col;   # www.google
select substring_index('www.google.com','.',3) as col;   # www.google.com
select substring_index('www.google.com','.',-1) as col;  # com
select substring_index('www.google.com','.',-2) as col;  # google.com
select substring_index('www.google.com','.',-3) as col;  # www.google.com