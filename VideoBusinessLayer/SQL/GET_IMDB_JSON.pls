CREATE OR REPLACE PROCEDURE GET_IMDB_JSON 
(
  URL_IMDB IN VARCHAR2 
) AS 
  req   UTL_HTTP.REQ;
  resp  UTL_HTTP.RESP;
  value VARCHAR2(32767);
BEGIN
  UTL_HTTP.set_wallet('file:C:\sqldeveloper\wallet','leo@sopa');
  req := UTL_HTTP.BEGIN_REQUEST('https://www.imdb.com/title/tt0068646/');
  UTL_HTTP.SET_HEADER(req, 'User-Agent', 'Mozilla/4.0');
  resp := UTL_HTTP.GET_RESPONSE(req);
  LOOP
    UTL_HTTP.READ_LINE(resp, value, TRUE);
    DBMS_OUTPUT.ENABLE(1000000);
    DBMS_OUTPUT.PUT_LINE(value);
  END LOOP;
  UTL_HTTP.END_RESPONSE(resp);
--EXCEPTION
  --WHEN UTL_HTTP.END_OF_BODY THEN
    --UTL_HTTP.END_RESPONSE(resp);
END GET_IMDB_JSON;