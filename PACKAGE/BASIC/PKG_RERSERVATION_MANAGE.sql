create or replace NONEDITIONABLE PACKAGE PKG_RERSERVATION_MANAGE AS 

  -- 예약 관리 입력
  PROCEDURE PROC_INS_RM(
		 IN_ROOM_ID		IN		VARCHAR2
		,IN_DATE		IN		VARCHAR2
		,IN_GUBUN		IN		VARCHAR2
		,IN_PRICE		IN		VARCHAR2
		,IN_PERSON		IN		VARCHAR2
		,IN_ADD_PERSON	IN		VARCHAR2
		,IN_ADD_PRICE	IN		VARCHAR2
		,O_ERRCODE		OUT		VARCHAR2
		,O_ERRMSG		OUT		VARCHAR2
  );
  
  -- 예약 관리 조회
  PROCEDURE PROC_SEL_RM(
		 IN_RM_ID		IN		VARCHAR2		-- 예약관리아이디
		,IN_ROOM_ID		IN		VARCHAR2		-- 방 아이디
		,IN_DATE_S		IN		VARCHAR2		-- 시작 날짜
		,IN_DATE_E		IN		VARCHAR2		-- 끝 날짜
		,IN_MIN_PRICE	IN		VARCHAR2		-- 최소 금액
		,IN_MAX_PRICE	IN		VARCHAR2		-- 최대 금액
		,IN_PERSON		IN		VARCHAR2		-- 기본 인원
		,IN_MAX_PERSON	IN		VARCHAR2		-- 최대 인원
		,O_CUR			OUT		SYS_REFCURSOR
  );
  

  -- 예약 관리 수정 
  PROCEDURE PROC_UP_RM(
		IN_RM_ID		IN		VARCHAR2
		,IN_ROOM_ID     IN      VARCHAR2
        ,IN_RM_DATE     IN      DATE
		,IN_GUBUN		IN		VARCHAR2
		,IN_PRICE		IN		VARCHAR2
		,IN_PERSON		IN		VARCHAR2
		,IN_ADD_PERSON	IN		VARCHAR2
		,IN_ADD_PRICE	IN		VARCHAR2
		,O_ERRCODE		OUT		VARCHAR2
		,O_ERRMSG		OUT		VARCHAR2
  );
  
  
  -- 예약 관리 삭제 
  PROCEDURE PROC_DEL_RM(
		IN_RM_ID		IN		VARCHAR2
		,O_ERRCODE		OUT		VARCHAR2
		,O_ERRMSG		OUT		VARCHAR2
  );
  
  
  
END PKG_RERSERVATION_MANAGE;
