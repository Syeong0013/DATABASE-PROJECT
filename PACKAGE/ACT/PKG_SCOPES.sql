create or replace NONEDITIONABLE PACKAGE PKG_SCOPES AS 

--추가
  PROCEDURE PROC_INS_SCOPES
  (
    IN_R_ID        IN  VARCHAR
    ,IN_SCOPES      IN  NUMBER
    ,O_ERRCODE   OUT VARCHAR
    ,O_ERRMSG    OUT VARCHAR
  );

  --조회
    PROCEDURE PROC_SEL_SCOPES
  (
    IN_R_ID        IN  VARCHAR
    ,IN_SCOPES      IN  NUMBER
    ,O_CURSOR   OUT SYS_REFCURSOR
  );

  --수정
    PROCEDURE PROC_UP_SCOPES
  (
    IN_R_ID        IN  VARCHAR
    ,IN_SCOPES      IN  NUMBER
    ,O_ERRCODE   OUT VARCHAR
    ,O_ERRMSG    OUT VARCHAR
  );

  --삭제
  PROCEDURE PROC_DEL_SCOPES
  (
    IN_R_ID        IN  VARCHAR
    --,IN_SCOPES      IN  NUMBER
    ,O_ERRCODE   OUT VARCHAR
    ,O_ERRMSG    OUT VARCHAR
  );
END PKG_SCOPES;
