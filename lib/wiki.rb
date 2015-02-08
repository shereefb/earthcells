require 'gollum-lib'

module Wiki
	def self.duplicate_page(source,target,commit={})
		wiki = Gollum::Wiki.new("wiki")
		page = wiki.page(source)
		wiki.write_page(target, page.format, page.raw_data, commit)
	end
end