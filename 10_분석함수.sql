-- 분석함수
-- 분석함수 OVER(정렬 방법)
SELECT FIRST_NAME,
       SALARY,
       RANK() OVER (ORDER BY SALARY DESC) AS 중복순서계산,
       DENSE_RANK() OVER (ORDER BY SALARY DESC) AS 중복없는등수,
       ROW_NUMBER() OVER (ORDER BY SALARY DESC) AS 일련번호,
       ROWNUM AS 정렬전조회순서
FROM EMPLOYEES;

--ROWNUM은 ORDER 시킬 때 결과가 바뀝니다.
SELECT ROWNUM,
        FIRST_NAME,
        SALARY
FROM EMPLOYEES
ORDER BY SALARY DESC;