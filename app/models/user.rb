class User < ActiveRecord::Base
  has_many :friend_relations
  has_many :friends, through: :friend_relations

  CREATE_FRIEND_COUNT_STORED_PROCEDURE_SQL = <<-SQL
CREATE OR REPLACE FUNCTION friend_count(integer) RETURNS integer AS
$$
DECLARE
  ret integer;
BEGIN
  SELECT COUNT(*) INTO ret FROM friend_relations WHERE user_id = $1;
  RETURN ret;
END;
$$
LANGUAGE 'PLPGSQL'
  SQL

  DROP_FRIEND_COUNT_STORED_PROCEDURE_SQL = <<-SQL
DROP FUNCTION friend_count(integer);
  SQL
end
