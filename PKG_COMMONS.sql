create or replace NONEDITIONABLE PACKAGE PKG_COMMONS AS 

  PROCEDURE PROC_INS_GRP(
	  IN_GRP_VAL		 	IN		VARCHAR2
	 ,IN_EXC_VAL			IN		VARCHAR2
	 ,IN_EXC_VAL2			IN		VARCHAR2
	 ,O_ERRCODE				OUT		VARCHAR2
	 ,O_ERRMSG				OUT		VARCHAR2
  ); 

  PROCEDURE PROC_INS_COM(
	  IN_GRP_ID				IN		VARCHAR2
	 ,IN_COM_VAL			IN		VARCHAR2
	 ,IN_PARENT_ID			IN		VARCHAR2
	 ,IN_EXC_VAL			IN		VARCHAR2
	 ,IN_EXC_VAL2			IN		VARCHAR2
	 ,O_ERRCODE				OUT		VARCHAR2
	 ,O_ERRMSG				OUT		VARCHAR2
  );

  PROCEDURE PROC_SEL_COM(
	IN_GRP_ID      	IN      VARCHAR2,
        IN_COM_VAL 	IN      VARCHAR2,
        IN_COM_ID  	IN      VARCHAR2,  
        IN_COM_LVL 	IN      NUMBER,
        O_CUR        OUT    SYS_REFCURSOR
  );
  
  
  PROCEDURE PROC_DEL_COMMONS(
        IN_GRP_ID      	IN VARCHAR2,
        IN_COM_ID  	IN VARCHAR2
    );
	
	
  PROCEDURE PROC_DEL_GRP(
		IN_GRP_ID			IN 		VARCHAR2
		,O_ERRCODE			OUT		VARCHAR2
		,O_ERRMSG			OUT		VARCHAR2
   );

  -- 삭제 
   PROCEDURE PROC_DEL_COM(
		IN_GRP_ID			IN		VARCHAR2
		,IN_COM_ID			IN		VARCHAR2
		,O_ERRCODE			OUT		VARCHAR2
		,O_ERRMSG			OUT		VARCHAR2
   );
   
    PROCEDURE PROC_UP_COMMONS
    (
        IN_GRP_VAL 	IN VARCHAR2,
        IN_GRP_ID      	IN VARCHAR2,
        IN_COM_VAL 	IN VARCHAR2,
        IN_COM_ID  	IN VARCHAR2,  
        IN_COM_LVL 	IN NUMBER,
        IN_PARENT_ID   IN VARCHAR2,
        IN_EXC_VAL 	    IN VARCHAR2,
        IN_EXC_VAL2 	IN VARCHAR2
    ) ;
	
END PKG_COMMONS;