module ApplicationHelper
end

class ActionDispatch::Request::Session
	def init kvps
		kvps.to_a.each do |kvp| 
			@key = kvp[0]
			@val = kvp[1]
			if self[@key] == nil
				self[@key] = @val
			end
		end
	end
end

# class Field
# 	attr_reader :real_name, :disp_name

# 	def init *args
# 		self.new
# 		self.real_name = args[0]
# 		self.disp_name = args[1] ? args[1] : args[0]
# 	end

# 	def is val
# 		self.value = val
# 	end
# end