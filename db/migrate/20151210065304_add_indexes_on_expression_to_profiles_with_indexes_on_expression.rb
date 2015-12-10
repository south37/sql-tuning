class AddIndexesOnExpressionToProfilesWithIndexesOnExpression < ActiveRecord::Migration
  def up
    execute <<-SQL
CREATE INDEX index_profiles_with_indexes_on_expressions_on_lower_email
ON profiles_with_indexes_on_expressions(lower(email));
    SQL
  end

  def down
    execute <<-SQL
DROP INDEX index_profiles_with_indexes_on_expressions_on_lower_email
    SQL
  end
end
