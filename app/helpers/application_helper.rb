module ApplicationHelper
	def inline_error(field, record)
		errors = record.errors

		if errors.include?(field)
			errors.full_messages_for(field).each do |error|
				concat content_tag(:p, error, class: 'text-red-600 text-sm')
			end
		end

		return nil
	end
end
