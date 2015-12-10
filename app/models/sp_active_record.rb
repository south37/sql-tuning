class SpActiveRecord < ActiveRecord::Base
   self.abstract_class = true
   #without return value
   def self.execute_sp(sql, *bindings)
     perform_sp(:execute, sql, *bindings)
   end
   #select many return values
   def self.fetch_sp(sql, *bindings)
     perform_sp(:select_all, sql, *bindings)
   end
   #select single return value
   def self.fetch_sp_val(sql, *bindings)
     perform_sp(:select_value, sql, *bindings)
   end

   protected
   def self.perform_sp(method, sql, *bindings)
     if bindings.any?
       sql = self.send(:sanitize_sql_array, bindings.unshift(sql))
     end
     self.connection.send(method, sql)
   end
 end
