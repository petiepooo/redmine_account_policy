module TestRefinements
	refine Setting do
		def self.rupdate(name, v)
			plugin = :"plugin_#{name}"
			setting = self[plugin].merge(v)
			self[plugin] = setting
		end
	end
end
