CREATE TABLE IF NOT EXISTS  stream_acct(
   id INTEGER GENERATED BY DEFAULT AS IDENTITY (START WITH 4 INCREMENT BY 1 NO CYCLE), 
   info JSON, 
   PRIMARY KEY(id))
