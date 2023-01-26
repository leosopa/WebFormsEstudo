create or replace NONEDITIONABLE PROCEDURE delete_filme (   
ID FILMES.ID%TYPE)  
IS  
BEGIN  
        DELETE FROM FILMES WHERE filmes.ID=ID;  
        COMMIT;
EXCEPTION
   WHEN OTHERS THEN
      dbms_output.put_line( SQLERRM );
END;  

